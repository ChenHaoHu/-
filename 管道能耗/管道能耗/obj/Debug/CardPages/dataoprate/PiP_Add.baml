   M S B A M L   `   `   `  ����G  C管道能耗, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullU/clr-namespace:管道能耗.CardPages.dataoprate!管道能耗.CardPages.dataoprate  5   	   /    )管道能耗.CardPages.dataoprate.PiP_Add   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Alocal/clr-namespace:管道能耗.CardPages.dataoprate     5   	     � Title$  添加管道数据��5   	   $	��400��6   $	��500��6&    � WindowStyle$ 
ToolWindow=�63   .��5	      � ���	#FFF0F0F0.+�5   
   �� $
��Left=�6   $��20��6/   $��	81,30,0,0q�6;   $
��Wrap=�6N   $��	编号：��6b   $	��Top=�6m   �� 5   
   -   5        $��pipe_id��5     $��Center=�6   $��Center=�68   $
��Left=�6[   $��20��6v   $��
116,26,0,0q�6�    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��120��6�    J� RenderTransformOrigin$ 0.483,-0.304&�6�   {�.  6  �� 5   
   $
��Left=�6   $��20��6/   $��	56,56,0,0q�6;   $
��Wrap=�6N   $��起点名称：��6b   $	��Top=�6o   �� 5   
   -   5        $��
start_spot��5   �   $��Center=�6   $��Center=�68   $
��Left=�6Z   $��20��6u   $��
116,52,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��120��6�   6�   �� 5   
   $
��Left=�6   $��20��6/   $��	56,80,0,0q�6;   $
��Wrap=�6N   $��管道名称：��6b   $	��Top=�6o   $ -2.382,-1.133&�6�   �� 5   
   -   5        $��	pipe_name��5   �   $��Center=�6   $��Center=�67   $
��Left=�6Z   $��20��6u   $��
116,76,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��120��6�   6�   �� 5   
   $
��Left=�6   $��20��6/   $��
29,106,0,0q�6;   $
��Wrap=�6O   $��管道长度(km)：��6c   $	��Top=�6t   �� 5   
   -   5        $��pipe_length��5   �   $��Center=�6   $��Center=�67   $
��Left=�6Z   $��20��6u   $��116,102,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��120��6�   $ -0.342,-0.826&�6�   6�   �� 5   
   $
��Left=�6   $��20��6/   $��
27,130,0,0q�6;   $
��Wrap=�6O   $	��Top=�6c   $��管道壁厚(mm)：��6{   �� 5   
   -   5        $��wall_thickness��5   �   $��Center=�6   $��Center=�67   $
��Left=�6Z   $��20��6u   $��116,126,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��120��6�   6�   �� 5   
   $
��Left=�6   $��20��6/   $��
56,156,0,0q�6;   $
��Wrap=�6O   $��输送介质：��6c   $	��Top=�6p   �� 5   
   -   5        $��transport_medium��5   �   $��Center=�6   $��Center=�67   $
��Left=�6Z   $��20��6u   $��116,152,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��120��6�   6�   �� 5   
   $
��Left=�6   $��20��6/   $��
46,180,0,0q�6;   $
��Wrap=�6O   $��A油罐类型：��6c   $	��Top=�6q   �� 5   
   -   5        $��tank_type_a��5   �   $��Center=�6   $��Center=�67   $
��Left=�6Z   $��20��6u   $��116,176,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��120��6�   6�   �� 5   
   $
��Left=�6   $��20��6/   $��
46,206,0,0q�6;   $
��Wrap=�6O   $��B油罐类型：��6c   $	��Top=�6q   �� 5   
   -   5        $��tank_type_b��5   �   $��Center=�6   $��Center=�67   $
��Left=�6Z   $��20��6u   $��116,202,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��120��6�   6�   �� 5   
   $
��Left=�6   $��20��6/   $��245,152,0,0q�6;   $
��Wrap=�6P   $��管道最大承压(Pa)：��6d   $	��Top=�6w   �� 5   
   -	   5        $��maximum_pressure��5   �   $��Center=�6   $��Center=�67   $
��Left=�6Z   $��20��6u   $��352,152,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��120��6�   6�   �� 5   
   $
��Left=�6   $��20��6/   $��
293,50,0,0q�6;   $
��Wrap=�6O   $��终点名称：��6c   $	��Top=�6p   $ -1.145,-3.667&�6�   �� 5   
   -
   5        $��end_spot��5   �   $��Center=�6   $��Center=�68   $
��Left=�6Z   $��20��6u   $��
352,50,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��120��6�   6�   �� 5    
   $
��Left=�6   $��20��6/   $��
260,76,0,0q�6;   $
��Wrap=�6O   $��管道外径(mm)：��6c   $	��Top=�6t   �� 5!   
   -   5        $��pipe_outer_diameter��5!   �   $��Center=�6   $��Center=�68   $
��Left=�6Z   $��20��6u   $��
352,75,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��120��6�   6�   �� 5"   
   $
��Left=�6   $��20��6/   $��273,100,0,0q�6;   $
��Wrap=�6P   $��管道埋深(m)：��6d   $	��Top=�6t   �� 5#   
   -   5        $��
pipe_depth��5#   �   $��Center=�6   $��Center=�68   $
��Left=�6Z   $��20��6u   $��352,100,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��120��6�   6�   �� 5$   
   $
��Left=�6   $��20��6/   $��292,126,0,0q�6;   $
��Wrap=�6P   $	��Top=�6d   �� 6}   $�保温材质��6�   �� 6�   $	�：��6�   6�   �� 5%   
   -   5        $��insulation_materials��5%   �   $��Center=�6   $��Center=�68   $
��Left=�6Z   $��20��6u   $��352,126,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��120��6�   6�   �� 5&   
   $
��Left=�6   $��20��6/   $��258,176,0,0q�6;   $
��Wrap=�6P   $	��Top=�6d   �� 6}   $�A油罐容量(m3)��6�   �� 6�   $	�：��6�   6�   �� 5'   
   -   5        $��tank_capacity_a��5'   �   $��Center=�6   $��Center=�67   $
��Left=�6Z   $��20��6u   $��352,176,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��120��6�   $ -0.342,-0.696&�6�   6�   �� 5(   
   $
��Left=�6   $��20��6/   $��258,202,0,0q�6;   $
��Wrap=�6P   $��B油罐容量(m3)：��6d   $	��Top=�6v   �� 5)   
   -   5        $��tank_capacity_b��5)   �   $��Center=�6   $��Center=�67   $
��Left=�6Z   $��20��6u   $��352,202,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��120��6�   6�   �� 5*   
   -   5        $��确定��5*      $
��Left=�6   $��160,262,0,0q�69   $	��Top=�6N   $��76��6f   6q   �� 5+   
   -   5        $��取消��5+      $
��Left=�6   $��280,262,0,0q�69   $	��Top=�6N   $��74��6f   6q   5-      5.      