﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Controls;
using System.Windows.Shapes;
using System.Windows.Media;
using System.Windows;


/*
 *  Copyright (C) 2011 Steve Kollmansberger
 * 
 *  This file is part of Logic Gate Simulator.
 *
 *  Logic Gate Simulator is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  Logic Gate Simulator is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with Logic Gate Simulator.  If not, see <http://www.gnu.org/licenses/>.
 */

namespace GatesWpf.UIGates
{
    /// <summary>
    /// A user I/O gate that may be renamed by the user.  This class provides no
    /// decoration; it is expected the subclass will provide the decoration.
    /// This class does provide for setting the color of some shape (_r)
    /// which represents if the value is true or false.
    /// </summary>
    public class UserIO : Gate
    {
        protected Gates.IOGates.UserIO _uio;
        protected TextBox txtName;
        protected TextBlock txtFirstLetter;
        protected Shape _r;

        /// <summary>
        /// If an undo manager is provided, renames will be undoable.
        /// </summary>
        public UndoRedo.UndoManager UndoProvider { get; set; }

        /// <summary>
        /// Construct a user i/o gate.  Note that the txtName textbox is created
        /// but NOT added to the canvas.  (Otherwise it would end up below the
        /// decoration for the specific instance).  So each subclass must
        /// add the txtName to the canvas when appropriate (in the constructor
        /// after adding the decoration).
        /// </summary>
        /// <param name="gate"></param>
        /// <param name="termids"></param>
        public UserIO(Gates.IOGates.UserIO gate, TerminalID[] termids) : base(gate, termids)
        {
            _uio = gate;

            //gate.PropertyChanged += EventDispatcher.CreateDispatchedHandler(Dispatcher, _ui_PropertyChanged);
            _gate.PropertyChanged += EventDispatcher.CreateBatchDispatchedHandler(_gate, _ui_PropertyChanged);

            
            txtFirstLetter = new TextBlock();
            txtFirstLetter.Margin = // new System.Windows.Thickness(28, 25, 22, 22);
                 new System.Windows.Thickness(26, 20, 22, 22);
            txtFirstLetter.Width = 20;
            txtFirstLetter.Height = 20;
            txtFirstLetter.IsHitTestVisible = false;
            txtFirstLetter.Background = new SolidColorBrush(Colors.Transparent);
            txtFirstLetter.FontWeight = FontWeights.Bold;
            txtFirstLetter.FontSize = 18;
            
            txtName = new TextBox();
            txtName.Visibility = System.Windows.Visibility.Hidden;
            txtName.Width = 54;
            txtName.Height = 20;
            txtName.LostFocus += new System.Windows.RoutedEventHandler(txtName_LostFocus);
            txtName.KeyDown += new System.Windows.Input.KeyEventHandler(txtName_KeyDown);
            txtFirstLetter.Visibility = System.Windows.Visibility.Visible;
            

            ContextMenu = new System.Windows.Controls.ContextMenu();
            MenuItem rename = new MenuItem();
            rename.Header = "Rename...";
            rename.Click += new System.Windows.RoutedEventHandler(rename_Click);
            ContextMenu.Items.Add(rename);
        }

        public override bool IsReadOnly
        {
            get
            {
                return base.IsReadOnly;
            }
            set
            {
                base.IsReadOnly = value;
                if (ContextMenu != null)
                    ContextMenu.IsEnabled = !value;
            }
        }

        void txtName_KeyDown(object sender, System.Windows.Input.KeyEventArgs e)
        {
            if (e.Key == System.Windows.Input.Key.Enter)
            {
                e.Handled = true;
                this.Focus();
            }
        }

        void txtName_LostFocus(object sender, System.Windows.RoutedEventArgs e)
        {
            string oldname = _uio.Name;
            _uio.SetName(txtName.Text);
            
            txtName.Visibility = System.Windows.Visibility.Hidden;
            if (UndoProvider != null)
                UndoProvider.Add(new UndoRedo.ChangeUserText(this, oldname, txtName.Text, _uio.SetName));
        }

        void rename_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            txtName.Text = _uio.Name;
            txtName.Visibility = System.Windows.Visibility.Visible;
            txtName.Focus();
            txtName.SelectAll();
        }

        void _ui_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            

            SetFill();
        }

        public override bool ShowTrueFalse
        {
            get
            {
                return base.ShowTrueFalse;
            }
            set
            {
                base.ShowTrueFalse = value;
                SetFill();
            }
        }

        protected void SetFill()
        {
            if (!(_uio.Name == "" || _uio.Name == "UserInput" || _uio.Name == "UserOutput"))
            {
                txtFirstLetter.Text = _uio.Name.Substring(0, 1).ToUpper();
            }
            else
            {
                txtFirstLetter.Text = "";
            }

            bool myval = _uio.Value && ShowTrueFalse;

            if (myval && _r.IsMouseOver)
                _r.Fill = Brushes.Pink;
            if (myval && !_r.IsMouseOver)
                _r.Fill = Brushes.Red;

            if (!myval && _r.IsMouseOver)
                _r.Fill = Brushes.Blue;
            if (!myval && !_r.IsMouseOver)
                _r.Fill = Brushes.Beige;

        }

        public override Gate CreateUserInstance()
        {
            UserIO g = base.CreateUserInstance() as UserIO;
            ((Gates.IOGates.UserIO)g.AbGate).SetName(_uio.Name);
            return g;
        }

    }



    class UserInput : UserIO
    {

        public UserInput() : this(new Gates.IOGates.UserInput()) { }

        public UserInput(Gates.IOGates.UserInput gate)
            : base(gate,
           new TerminalID[] { 
                new TerminalID(false, 0 , Position.RIGHT)})
        {


            Rectangle r = new Rectangle();
            r.Margin = new System.Windows.Thickness(15);
            r.Width = 34;
            r.Height = 34;
            r.Stroke = Brushes.Black;
            r.StrokeThickness = 2;
            r.Fill = Brushes.White;
            myCanvas.Children.Add(r);

            _r = new Rectangle();
            _r.Margin = new System.Windows.Thickness(20);
            _r.Width = 24;
            _r.Height = 24;
            _r.Stroke = Brushes.Black;
            _r.StrokeThickness = 2;
            SetFill();

            _r.MouseEnter += new System.Windows.Input.MouseEventHandler(r_MouseEnter);
            _r.MouseLeave += new System.Windows.Input.MouseEventHandler(r_MouseLeave);
            _r.MouseDown += new System.Windows.Input.MouseButtonEventHandler(r_MouseDown);


            myCanvas.Children.Add(_r);
            myCanvas.Children.Add(txtName);
            myCanvas.Children.Add(txtFirstLetter);


        }
       
        void r_MouseDown(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            if (!IsReadOnly)
                _uio.Value = !_uio.Value;
        }

        void r_MouseLeave(object sender, System.Windows.Input.MouseEventArgs e)
        {
            if (!IsReadOnly)
                SetFill();
        }

        void r_MouseEnter(object sender, System.Windows.Input.MouseEventArgs e)
        {
            if (!IsReadOnly)
                SetFill();
        }
    }


    class UserOutput : UserIO
    {
        
        

        public UserOutput() : this(new Gates.IOGates.UserOutput()) { }

        public UserOutput(Gates.IOGates.UserOutput gate)
            : base(gate,
           new TerminalID[] { 
                new TerminalID(true, 0 , Position.LEFT)})
        {


            Ellipse r = new Ellipse();
            r.Margin = new System.Windows.Thickness(15);
            r.Width = 34;
            r.Height = 34;
            r.Stroke = Brushes.Black;
            r.StrokeThickness = 2;
            r.Fill = Brushes.White;
            myCanvas.Children.Add(r);

            _r = new Ellipse();
            _r.Margin = new System.Windows.Thickness(20);
            _r.Width = 24;
            _r.Height = 24;
            _r.Stroke = Brushes.Black;
            _r.StrokeThickness = 2;
            SetFill();

            myCanvas.Children.Add(_r);
            myCanvas.Children.Add(txtName);
            myCanvas.Children.Add(txtFirstLetter);

        }



    }
}
