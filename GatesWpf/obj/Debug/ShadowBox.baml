   M S B A M L   `   `   `  ����  GatesWpf    GatesWpf.ShadowBox   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        � 	Resources  5       �� 
TargetType   	fadeStyle �� Property �� Value �� Triggers :� RoutedEvent �� TargetProperty	 W� To g� Duration��%�  &	        �� 5   
   " ��6   .�5      ��  �@J�Opacity$	 0.2Q�6(    5      :� 5	      $ Border.MouseEnter��6   .[�5
      �� .��5      �� .��5      W� $ Opacity�5      $	 0.8X�5      $ 0:0:0.25D�6   5      5      5      :� 5      $ Border.MouseLeave��6   .[�5      �� .��5      �� .��5      W� $ Opacity�5      $	 0.2X�5      $ 0:0:0.5D�6   5      5      5      5       5!      .��5#      �� -   5        $��outerBorder��5$   7   $��Center=�5#      $��Center=�68   
��� ���$��3q�6v   	 �� CornerRadius$	 10��6�   
 �� Padding$
 2q�6�   #��[  5$      ._�5'   
   � -   5        $��Grid1��5'      .+�5)      �� -   5        $
��mask��5)   $   
�������$	 7��6a   �� 5,      -   5        $��	spContent��5,       �� Orientation$ 
Horizontal=�6*    J� OpacityMask 5.      !� 5/       !� Visual 6"   ��  �� ElementName$
 mask��53      55      56      57      