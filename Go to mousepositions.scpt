FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
Here are some commands that let you remember positions on the screen and have the mouse and jump directly to them.

To use them, say "create mouse position (name of position)" to create a new mouse position where your mouse currently is.

To go to a position say "go to mouse (name of position)" and the mouse should jump directly there.

these commands create a file on your desktop called mousepositions and saves your positions, along with their coordinates there. if you create a new position with a name that already exists, it will update the location of the position.

You can name the commands whatever you want, but I like those.

For this to work, you must first install cliclick, available here:
https://github.com/BlueM/cliclick

To install cliclick, go to the terminal and type

git clone https://github.com/BlueM/cliclick

Then type:

sudo make install

Some extra stuff:
at the bottom of the script, set ShutUp to false if you want feedback about what it isn't recognizing.
     � 	 	� 
 H e r e   a r e   s o m e   c o m m a n d s   t h a t   l e t   y o u   r e m e m b e r   p o s i t i o n s   o n   t h e   s c r e e n   a n d   h a v e   t h e   m o u s e   a n d   j u m p   d i r e c t l y   t o   t h e m . 
 
 T o   u s e   t h e m ,   s a y   " c r e a t e   m o u s e   p o s i t i o n   ( n a m e   o f   p o s i t i o n ) "   t o   c r e a t e   a   n e w   m o u s e   p o s i t i o n   w h e r e   y o u r   m o u s e   c u r r e n t l y   i s . 
 
 T o   g o   t o   a   p o s i t i o n   s a y   " g o   t o   m o u s e   ( n a m e   o f   p o s i t i o n ) "   a n d   t h e   m o u s e   s h o u l d   j u m p   d i r e c t l y   t h e r e . 
 
 t h e s e   c o m m a n d s   c r e a t e   a   f i l e   o n   y o u r   d e s k t o p   c a l l e d   m o u s e p o s i t i o n s   a n d   s a v e s   y o u r   p o s i t i o n s ,   a l o n g   w i t h   t h e i r   c o o r d i n a t e s   t h e r e .   i f   y o u   c r e a t e   a   n e w   p o s i t i o n   w i t h   a   n a m e   t h a t   a l r e a d y   e x i s t s ,   i t   w i l l   u p d a t e   t h e   l o c a t i o n   o f   t h e   p o s i t i o n . 
 
 Y o u   c a n   n a m e   t h e   c o m m a n d s   w h a t e v e r   y o u   w a n t ,   b u t   I   l i k e   t h o s e . 
 
 F o r   t h i s   t o   w o r k ,   y o u   m u s t   f i r s t   i n s t a l l   c l i c l i c k ,   a v a i l a b l e   h e r e : 
 h t t p s : / / g i t h u b . c o m / B l u e M / c l i c l i c k 
 
 T o   i n s t a l l   c l i c l i c k ,   g o   t o   t h e   t e r m i n a l   a n d   t y p e 
 
 g i t   c l o n e   h t t p s : / / g i t h u b . c o m / B l u e M / c l i c l i c k 
 
 T h e n   t y p e : 
 
 s u d o   m a k e   i n s t a l l 
 
 S o m e   e x t r a   s t u f f : 
 a t   t h e   b o t t o m   o f   t h e   s c r i p t ,   s e t   S h u t U p   t o   f a l s e   i f   y o u   w a n t   f e e d b a c k   a b o u t   w h a t   i t   i s n ' t   r e c o g n i z i n g . 
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        l     ��������  ��  ��        l     ��������  ��  ��        i         I      �� ���� 0 readfile ReadFile   ��  o      ���� 0 thefile TheFile��  ��    k            r         c         o     ���� 0 thefile TheFile  m    ��
�� 
TEXT  o      ���� 0 thefile TheFile   ��  L         I   �� !��
�� .rdwrread****        **** ! 4    
�� "
�� 
file " o    	���� 0 thefile TheFile��  ��     # $ # l     ��������  ��  ��   $  % & % i     ' ( ' I      �� )���� 0 findaposition FindAPosition )  * + * o      ���� 0 positionname PositionName +  , - , o      ���� 0 thefile TheFile -  .�� . o      ���� 0 shutup ShutUp��  ��   ( k     j / /  0 1 0 r      2 3 2 I     �� 4���� 0 readfile ReadFile 4  5�� 5 o    ���� 0 thefile TheFile��  ��   3 o      ���� 0 allpositions AllPositions 1  6 7 6 Q   	 S 8 9�� 8 X    J :�� ; : Z    E < =���� < l   1 >���� > =    1 ? @ ? l   + A���� A c    + B C B n    ) D E D 7  )�� F G
�� 
cwor F m   # %����  G m   & (������ E o    ���� 0 eachposition EachPosition C m   ) *��
�� 
ctxt��  ��   @ l  + 0 H���� H c   + 0 I J I n   + . K L K 2  , .��
�� 
cwor L o   + ,���� 0 positionname PositionName J m   . /��
�� 
ctxt��  ��  ��  ��   = L   4 A M M J   4 @ N N  O P O l  4 9 Q���� Q n   4 9 R S R 4   5 8�� T
�� 
cwor T m   6 7������ S o   4 5���� 0 eachposition EachPosition��  ��   P  U�� U l  9 > V���� V n   9 > W X W 4   : =�� Y
�� 
cwor Y m   ; <������ X o   9 :���� 0 eachposition EachPosition��  ��  ��  ��  ��  �� 0 eachposition EachPosition ; l    Z���� Z n     [ \ [ 2   ��
�� 
cpar \ o    ���� 0 allpositions AllPositions��  ��   9 R      ������
�� .ascrerr ****      � ****��  ��  ��   7  ]�� ] Z   T j ^ _���� ^ l  T W `���� ` =   T W a b a o   T U���� 0 shutup ShutUp b m   U V��
�� boovfals��  ��   _ k   Z f c c  d e d I  Z c�� f��
�� .sysottosnull���     TEXT f b   Z _ g h g m   Z [ i i � j j   u n a b l e   t o   m a t c h   h l  [ ^ k���� k c   [ ^ l m l o   [ \���� 0 positionname PositionName m m   \ ]��
�� 
ctxt��  ��  ��   e  n�� n L   d f o o m   d e p p � q q  ��  ��  ��  ��   &  r s r l     ��������  ��  ��   s  t u t i     v w v I      �� x���� 0 gotoposition GoToPosition x  y z y o      ���� 0 positionname PositionName z  { | { o      ���� 0 thefile TheFile |  }�� } o      ���� 0 shutup ShutUp��  ��   w k     , ~ ~   �  r     
 � � � I     �� ����� 0 findaposition FindAPosition �  � � � o    ���� 0 positionname PositionName �  � � � o    ���� 0 thefile TheFile �  ��� � o    ���� 0 shutup ShutUp��  ��   � o      ���� 0 coordinates   �  ��� � Z    , � ����� � l    ����� � =     � � � l    ����� � =     � � � o    ���� 0 coordinates   � m     � � � � �  ��  ��   � m    ��
�� boovfals��  ��   � k    ( � �  � � � r    " � � � b      � � � b     � � � b     � � � m     � � � � � 4 / u s r / l o c a l / b i n / c l i c l i c k   m : � l    ����� � n     � � � 4    �� �
�� 
cobj � m    ����  � o    ���� 0 coordinates  ��  ��   � m     � � � � �  , � l    ����� � n     � � � 4    �� �
�� 
cobj � m    ����  � o    ���� 0 coordinates  ��  ��   � o      ���� 0 thecode TheCode �  ��� � I  # (�� ��
�� .sysoexecTEXT���     TEXT � o   # $�~�~ 0 thecode TheCode�  ��  ��  ��  ��   u  � � � l     �}�|�{�}  �|  �{   �  ��z � i     � � � I      �y ��x�y 0 	srhandler   �  ��w � o      �v�v 0 vars  �w  �x   � k      � �  � � � r      � � � n      � � � o    �u�u 0 	vardiddly 	varDiddly � o     �t�t 0 vars   � o      �s�s 0 positionname PositionName �  � � � r    	 � � � m    �r
�r boovfals � o      �q�q 0 shutup ShutUp �  � � � r   
  � � � l  
  ��p�o � b   
  � � � l  
  ��n�m � c   
  � � � l  
  ��l�k � I  
 �j ��i
�j .earsffdralis        afdr � m   
 �h
�h afdmdesk�i  �l  �k   � m    �g
�g 
ctxt�n  �m   � m     � � � � �  M o u s e p o s i t i o n s�p  �o   � o      �f�f 0 thefile TheFile �  ��e � I    �d ��c�d 0 gotoposition GoToPosition �  � � � o    �b�b 0 positionname PositionName �  � � � o    �a�a 0 thefile TheFile �  ��` � o    �_�_ 0 shutup ShutUp�`  �c  �e  �z       �^ � � � � ��^   � �]�\�[�Z�] 0 readfile ReadFile�\ 0 findaposition FindAPosition�[ 0 gotoposition GoToPosition�Z 0 	srhandler   � �Y �X�W � ��V�Y 0 readfile ReadFile�X �U ��U  �  �T�T 0 thefile TheFile�W   � �S�S 0 thefile TheFile � �R�Q�P
�R 
TEXT
�Q 
file
�P .rdwrread****        ****�V ��&E�O*�/j  � �O (�N�M � ��L�O 0 findaposition FindAPosition�N �K ��K  �  �J�I�H�J 0 positionname PositionName�I 0 thefile TheFile�H 0 shutup ShutUp�M   � �G�F�E�D�C�G 0 positionname PositionName�F 0 thefile TheFile�E 0 shutup ShutUp�D 0 allpositions AllPositions�C 0 eachposition EachPosition � �B�A�@�?�>�=�<�;�:�9�8 i�7 p�B 0 readfile ReadFile
�A 
cpar
�@ 
kocl
�? 
cobj
�> .corecnte****       ****
�= 
cwor�<��
�; 
ctxt�:���9  �8  
�7 .sysottosnull���     TEXT�L k*�k+  E�O C =��-[��l kh �[�\[Zk\Z�2�&��-�&  ���/E��i/ElvY h[OY��W X 	 
hO�f  ��&%j O�Y h � �6 w�5�4 � ��3�6 0 gotoposition GoToPosition�5 �2 ��2  �  �1�0�/�1 0 positionname PositionName�0 0 thefile TheFile�/ 0 shutup ShutUp�4   � �.�-�,�+�*�. 0 positionname PositionName�- 0 thefile TheFile�, 0 shutup ShutUp�+ 0 coordinates  �* 0 thecode TheCode � �) � ��( ��'�) 0 findaposition FindAPosition
�( 
cobj
�' .sysoexecTEXT���     TEXT�3 -*���m+  E�O�� f  ��k/%�%��l/%E�O�j Y h � �& ��%�$ � ��#�& 0 	srhandler  �% �" ��"  �  �!�! 0 vars  �$   � � ����  0 vars  � 0 positionname PositionName� 0 shutup ShutUp� 0 thefile TheFile � ���� ��� 0 	vardiddly 	varDiddly
� afdmdesk
� .earsffdralis        afdr
� 
ctxt� 0 gotoposition GoToPosition�# ��,E�OfE�O�j �&�%E�O*���m+ ascr  ��ޭ