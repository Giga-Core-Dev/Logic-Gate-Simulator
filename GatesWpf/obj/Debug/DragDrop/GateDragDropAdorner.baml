   M S B A M L   `   `   `  ����J  FGatesWpf, Version=1.4.4182.31072, Culture=neutral, PublicKeyToken=null5clr-namespace:GatesWpf.DragDropGatesWpf.DragDrop  5      +    %GatesWpf.DragDrop.GateDragDropAdorner   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      4dragDropclr-namespace:GatesWpf.DragDrop     5      $��80��5      $��30��6   z�5	      V� 5
   
   .~�5      ��   �� ScaleX$  1Q�6    �� ScaleY$ 1Q�6(   �� 5       �� AngleX$ 0Q�6    �� AngleY$ 0Q�6'   �� 5       �� Angle$ 0Q�6   T� 5       T� X$ 0Q�6!    T� Y$ 0Q�6'   5       � 	Resources 5         suckAni g� 	BeginTime	 �� TargetProperty
 O� KeyTime O� Value �� 	KeySpline	 W� To g� Duration  translateAni g� AccelerationRatio g� DecelerationRatio  canDropBrush �� Color  dropIcon H� Drawing � Geometry � Brush �� 
StartPoint �� EndPoint � Color � Offset
 � Pen >� LineJoin >� Brush  
noDropIcon  canDrop g� FillBehavior  
cannotDrop  loadAni �� 
TargetName��%,  &	        &	     &	 �    &	     &	 	    &	 1    &	 G    &	 8    �� 5   
   .��5      U� $ 00:00:00X�6,   $V	 P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6A   .\�5      �� $
 00:00:00��6'   $ 1Q�6:   �� 5      $ 0.709,0,0.689,1��6'   $
 00:00:00.1000000��6C   $	 1.1Q�6^   �� 5      $
 00:00:00.2000000��6'   $ 0Q�6B   5      U� 5      $ 00:00:00X�6,   $V	 P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6A   .\�5      �� $
 00:00:00��6'   $ 1Q�6:   �� 5      $ 0.709,0,0.689,1��6'   $
 00:00:00.1000000��6C   $	 1.1Q�6^   �� 5      $
 00:00:00.2000000��6'   $ 0Q�6B   5      W� 5      $	 (UIElement.Opacity)�6   $ 0X�6N   $ 00:00:00X�6U   $ 
00:00:00.3D�6j   5       �� 5!   
   .��5"      W� $ 00:00:00X�6   $ 00:00:00.25D�63   $ .1Q�6J   $ .9Q�6a   $U	 O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6x   W� 5#      $ 00:00:00X�6   $ 00:00:00.25D�63   $ .1Q�6J   $ .9Q�6a   $U	 O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�6y   W� 5$      $	 (UIElement.Opacity)�6   $ 0X�6N   $ 00:00:00.15X�6U   $ 
00:00:00.2D�6m   5%      �� 5'   
   $
 Blue��6/   H� 5)   
    5*      I� 5+      ��5-      � � ����\� ���$g�Ğm|sY���|sY��|sY�� $g��� \� Ӵ� X�s �����������Ğm�����X�s ��\�  5.      �� 5/   "   $ 0.242632,1.26143&�66   $ 0.397104,-0.283282&�6T   ��51   *   � $ 	#FFBED725��67   $ 0Q�6I   � 52   *   $ 	#FFBED725��67   $ 1Q�6I   54   #   56      � 57       �	#FFFFFFFF� ���U���r �d���r ��>���r ������ ���ro� є��ę� ѴPę� �(�`ę� 4�nlC� 4�nD�4�nt,@�4�nLQ(�`��^�P��^є����^є��ۯӔ�����>��_�d��_�рU��_��{��_� т�� тۯ� т��^��1��^�l� ��^`"LQ`"t,@�`"D�`"lC� l� ę� �1ę� � тę� � тro� � т��� {���r �U���r  58      >� 59   "   $ Round=�6&    5:   &   �� 5;   *   $ 0,0.5&�6>   $ 1,0.5&�6Q   ��5=   2   � $ 	#FF037000��6?   $ 0Q�6Q   � 5>   2   $ 	#FF94D394��6?   $ 1Q�6Q   5@   +   5B   #   5D      5F      5H      H� 5J   
    5K      I� 5L      ��5N      � � ����\� ���$g�Ğm|sY���|sY��|sY�� $g��� \� Ӵ� X�s �����������Ğm�����X�s ��\�  5O      �� 5P   "   $ 0.242632,1.26143&�66   $ 0.397104,-0.283282&�6T   ��5R   *   � $ 	#FF871D29��67   $ 0Q�6I   � 5S   *   $ 	#FFB32D22��67   $ 1Q�6I   5U   #   5W      � 5X       �	#FFFFFFFF� ����/X� ��O\�� ��:h��� ��{��� hx��� ����x�� �,A��� ��+�� �~�� �i%�� � RX� �<�]�� <�] V�  R�@� ���\� � R�	Z�<�]��e<�]4Gy R�1�ќi%pȱ��~����+���,A�pȱ����@dx�hx�pȱӠ�{����:h����O\pȱф�/�1�Ӽ�#4Gy��#��e��/�	Z�i\� ф�/�@� Ӽ�# V� ��#�� ��/X�  5Y      >� 5Z   "   $ Round=�6&    5[   &   �� 5\   *   $ 0.103481,0.89652&�6>   $ 0.89652,0.103481&�6\   ��5^   2   � $ 	#FF871D29��6?   $ 0Q�6Q   � 5_   2   $ 	#FFB32D22��6?   $ 1Q�6Q   5a   +   5c   #   5e      5g      5i      �� 5k   
   $
 Stop=�6%   .��5l      U� $ 00:00:00X�6,   $V	 P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6A   .\�5m      �� $
 00:00:00��6'   $ 1Q�6:   �� 5n      $ 0.709,0,0.689,1��6'   $
 00:00:00.1000000��6C   $	 1.1Q�6^   �� 5o      $
 00:00:00.2000000��6'   $ 0Q�6B   5p      U� 5q      $ 00:00:00X�6,   $V	 P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6A   .\�5r      �� $
 00:00:00��6'   $ 1Q�6:   �� 5s      $ 0.709,0,0.689,1��6'   $
 00:00:00.1000000��6C   $	 1.1Q�6^   �� 5t      $
 00:00:00.2000000��6'   $ 0Q�6B   5u      W� 5v      $	 (UIElement.Opacity)�6   $ 0X�6N   $ 00:00:00X�6U   $ 
00:00:00.3D�6j   5w      �� 5x   
   $
 Stop=�6(   .��5y      W� $ 00:00:00X�6   $ 00:00:00.25D�63   $ .1Q�6J   $ .9Q�6a   $U	 O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6x   W� 5z      $ 00:00:00X�6   $ 00:00:00.25D�63   $ .1Q�6J   $ .9Q�6a   $U	 O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�6y   W� 5{      $	 (UIElement.Opacity)�6   $ 0X�6N   $ 00:00:00.15X�6U   $ 
00:00:00.2D�6m   5|      �� 5}   
   .��5~      U� $ 00:00:00X�6,   $
 grid��6A   $V	 P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6^   .\�5      �� $
 00:00:00��6'   $	 0.3Q�6:   �� 5�      $ 0.709,0,0.689,1��6'   $
 00:00:00.1000000��6C   $	 1.1Q�6^   �� 5�      $
 00:00:00.2000000��6'   $ 1Q�6B   5�      U� 5�      $ 00:00:00X�6,   $
 grid��6A   $V	 P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6^   .\�5�      �� $
 00:00:00��6'   $	 0.3Q�6:   �� 5�      $ 0.709,0,0.689,1��6'   $
 00:00:00.1000000��6C   $	 1.1Q�6^   �� 5�      $
 00:00:00.2000000��6'   $ 1Q�6B   5�      U� 5�      $ 00:00:00X�6,   $
 grid��6A   $	 (UIElement.Opacity)�6^   .\�5�      �� $
 00:00:00��6'   $ 0Q�6:   �� 5�      $ 0.709,0,0.689,1��6'   $
 00:00:00.1000000��6C   $ 1Q�6^   5�      5�      5�       � Triggers 5�      :� 5�   
    :� RoutedEvent$ FrameworkElement.Loaded��6   .[�5�      �� #��[ 6   5�      .��5�      � -   5          �Name$
  grid��5�      ! J� RenderTransformOrigin$! 0.5,0.5&�6   z�5�   
   V� 5�      .~�5�      �� $  1Q�6!   $ 1Q�6,   �� 5�      $ 0Q�6    $ 0Q�6+   �� 5�      $ 0Q�6"   T� 5�      $ 0Q�6%   $ 0Q�6+   5�      .+�5�   
   �� -   5        " ��Name$
" back��5�      $��2��6"   # �� RadiusX$# 8��66   $ �� RadiusY$$ 8��6B   ���	#7F000000
�������6_   �� 5�   
   -   5        % ��Name$% content��5�      $��Center=�6>   $��Center=�6[   $��
Myriad Pro)�6v   $��12(�6�   ���#dcdcdc���	#FFFFFFFF��6*   �� 6�   �� 5�   
   -   5        & ��Name$& 	indicator��5�      ' J� Opacity$' .8Q�6   $��20��60   $��20��6;   $��Uniform=�6G   $��Right=�6Y   $	��Top=�6u   $��0,-12,-12,0q�6�   5�      5�      