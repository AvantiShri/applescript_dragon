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
 l     ��������  ��  ��        l     ��������  ��  ��        l     ��������  ��  ��        l     ��������  ��  ��        l     ��������  ��  ��        i         I      �� ���� &0 addpositiontofile AddPositionToFile      o      ���� 0 position Position   ��  o      ���� 0 
targetfile 
TargetFile��  ��    Q    �     k   �      !   r     " # " m    ��
�� boovfals # o      ���� 0 repeated   !  $ % $ r     & ' & c    
 ( ) ( o    ���� 0 
targetfile 
TargetFile ) m    	��
�� 
TEXT ' o      ���� 0 
targetfile 
TargetFile %  * + * r     , - , I   �� . /
�� .rdwropenshor       file . 4    �� 0
�� 
file 0 o    ���� 0 
targetfile 
TargetFile / �� 1��
�� 
perm 1 m    ��
�� boovtrue��   - o      ���� 0 openfile OpenFile +  2 3 2 Q    S 4 5 6 4 r    % 7 8 7 I    #�� 9���� 0 readfile ReadFile 9  :�� : o    ���� 0 
targetfile 
TargetFile��  ��   8 o      ���� 0 allpositions AllPositions 5 R      ������
�� .ascrerr ****      � ****��  ��   6 k   - S ; ;  < = < r   - @ > ? > b   - > @ A @ b   - : B C B b   - 8 D E D b   - 4 F G F b   - 2 H I H m   - . J J � K K   I n   . 1 L M L 1   / 1��
�� 
pnam M o   . /���� 0 position Position G m   2 3 N N � O O    E n   4 7 P Q P o   5 7���� 0 x   Q o   4 5���� 0 position Position C m   8 9 R R � S S    A n   : = T U T o   ; =���� 0 y   U o   : ;���� 0 position Position ? o      ���� 0 	linetoadd 	LineToAdd =  V W V I  A J�� X Y
�� .rdwrwritnull���     **** X o   A B���� 0 	linetoadd 	LineToAdd Y �� Z [
�� 
refn Z o   C D���� 0 openfile OpenFile [ �� \��
�� 
wrat \ m   E F����  ��   W  ] ^ ] I  K P�� _��
�� .rdwrclosnull���     **** _ l  K L `���� ` o   K L���� 0 openfile OpenFile��  ��  ��   ^  a�� a L   Q S b b m   Q R��
�� boovtrue��   3  c d c r   T Y e f e m   T W g g � h h   f o      ���� 0 filenew FileNew d  i j i Y   ZE k�� l m�� k k   l@ n n  o p o r   l x q r q n   l v s t s 4   q v�� u
�� 
cobj u o   t u����  0 positionnumber PositionNumber t n   l q v w v 2  m q��
�� 
cpar w o   l m���� 0 allpositions AllPositions r o      ���� 0 currentline CurrentLine p  x�� x Z   y@ y z���� y l  y � {���� { ?   y � | } | I  y ~�� ~��
�� .corecnte****       **** ~ o   y z���� 0 currentline CurrentLine��   } m   ~ ���� ��  ��   z k   �<    � � � r   � � � � � l  � � ����� � n   � � � � � 7 � ��� � �
�� 
cwor � m   � �����  � m   � ������� � o   � ����� 0 currentline CurrentLine��  ��   � o      ���� 0 	leftaside 	LeftAside �  � � � r   � � � � � l  � � ����� � n   � � � � � 2  � ���
�� 
cwor � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 position Position��  ��   � o      ���� 0 
rightaside 
RightAside �  ��� � Z   �< � ��� � � l  � � ����� � =   � � � � � o   � ����� 0 	leftaside 	LeftAside � o   � ����� 0 
rightaside 
RightAside��  ��   � k   � � � �  � � � r   � � � � � m   � ���
�� boovtrue � o      ���� 0 repeated   �  ��� � Z   � � � ��� � � l  � � ����� � =   � � � � � o   � �����  0 positionnumber PositionNumber � m   � ����� ��  ��   � r   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � o   � ����� 0 filenew FileNew � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 position Position � m   � � � � � � �    � n   � � � � � o   � ����� 0 x   � o   � ����� 0 position Position � m   � � � � � � �    � n   � � � � � o   � ����� 0 y   � o   � ����� 0 position Position � o      ���� 0 filenew FileNew��   � r   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � o   � ����� 0 filenew FileNew � m   � � � � � � �  
 � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 position Position � m   � � � � � � �    � n   � � � � � o   � ����� 0 x   � o   � ����� 0 position Position � m   � � � � � � �    � n   � � � � � o   � ����� 0 y   � o   � ����� 0 position Position � o      ���� 0 filenew FileNew��  ��   � k   �< � �  � � � r   � � � � � m   � � � � � � �   � o      ����  0 annoyingdragon AnnoyingDragon �  � � � Z   � � � ����� � l  � � ����� � ?   � � � � � o   � ���  0 positionnumber PositionNumber � m   � ��~�~ ��  ��   � r   � � � � � b   � � � � � o   � ��}�}  0 annoyingdragon AnnoyingDragon � m   � � � � � � �  
 � o      �|�|  0 annoyingdragon AnnoyingDragon��  ��   �  � � � Y   �6 ��{ � ��z � k  1 � �  � � � Z  " � ��y�x � l  ��w�v � ?   � � � o  �u�u 0 wordednumber WordedNumber � m  �t�t �w  �v   � r   � � � b   � � � o  �s�s  0 annoyingdragon AnnoyingDragon � m   � � � � �    � o      �r�r  0 annoyingdragon AnnoyingDragon�y  �x   �  � � � r  #+ � � � n  #)   4  $)�q
�q 
cwor o  '(�p�p 0 wordednumber WordedNumber o  #$�o�o 0 currentline CurrentLine � o      �n�n 0 eachword EachWord � �m r  ,1 b  ,/ o  ,-�l�l  0 annoyingdragon AnnoyingDragon o  -.�k�k 0 eachword EachWord o      �j�j  0 annoyingdragon AnnoyingDragon�m  �{ 0 wordednumber WordedNumber � m  �i�i  � l �h�g I �f	�e
�f .corecnte****       ****	 n  

 2 �d
�d 
cwor o  �c�c 0 currentline CurrentLine�e  �h  �g  �z   � �b r  7< b  7: o  78�a�a 0 filenew FileNew o  89�`�`  0 annoyingdragon AnnoyingDragon o      �_�_ 0 filenew FileNew�b  ��  ��  ��  ��  ��  0 positionnumber PositionNumber l m   ] ^�^�^  m l  ^ g�]�\ I  ^ g�[�Z
�[ .corecnte****       **** n   ^ c 2  _ c�Y
�Y 
cpar o   ^ _�X�X 0 allpositions AllPositions�Z  �]  �\  ��   j �W Z  F��V l FI�U�T =  FI o  FG�S�S 0 repeated   m  GH�R
�R boovfals�U  �T   k  Lz  r  Le  b  Lc!"! b  L_#$# b  L[%&% b  LW'(' b  LS)*) m  LO++ �,,  
* n  OR-.- 1  PR�Q
�Q 
pnam. o  OP�P�P 0 position Position( m  SV// �00   & n  WZ121 o  XZ�O�O 0 x  2 o  WX�N�N 0 position Position$ m  [^33 �44   " n  _b565 o  `b�M�M 0 y  6 o  _`�L�L 0 position Position  o      �K�K 0 	linetoadd 	LineToAdd 787 I fq�J9:
�J .rdwrwritnull���     ****9 o  fg�I�I 0 	linetoadd 	LineToAdd: �H;<
�H 
refn; o  hi�G�G 0 openfile OpenFile< �F=�E
�F 
wrat= m  jm�D
�D rdwreof �E  8 >?> I rw�C@�B
�C .rdwrclosnull���     ****@ l rsA�A�@A o  rs�?�? 0 openfile OpenFile�A  �@  �B  ? B�>B L  xzCC m  xy�=
�= boovtrue�>  �V   k  }�DD EFE I }��<GH
�< .rdwrseofnull���     ****G o  }~�;�; 0 openfile OpenFileH �:I�9
�: 
set2I m  ���8�8  �9  F JKJ I ���7LM
�7 .rdwrwritnull���     ****L o  ���6�6 0 filenew FileNewM �5NO
�5 
refnN o  ���4�4 0 openfile OpenFileO �3P�2
�3 
wratP m  ���1�1  �2  K QRQ I ���0S�/
�0 .rdwrclosnull���     ****S l ��T�.�-T o  ���,�, 0 openfile OpenFile�.  �-  �/  R U�+U L  ��VV m  ���*
�* boovtrue�+  �W    R      �)�(�'
�) .ascrerr ****      � ****�(  �'    k  ��WW XYX Q  ��Z[�&Z I ���%\�$
�% .rdwrclosnull���     ****\ l ��]�#�"] o  ���!�! 0 
targetfile 
TargetFile�#  �"  �$  [ R      � ��
�  .ascrerr ****      � ****�  �  �&  Y ^�^ L  ��__ m  ���
� boovfals�    `a` l     ����  �  �  a bcb i    ded I      �f�� 0 readfile ReadFilef g�g o      �� 0 thefile TheFile�  �  e k     hh iji r     klk c     mnm o     �� 0 thefile TheFilen m    �
� 
TEXTl o      �� 0 thefile TheFilej o�o L    pp I   �q�
� .rdwrread****        ****q 4    
�r
� 
filer o    	�� 0 thefile TheFile�  �  c sts l     ���
�  �  �
  t uvu i    wxw I      �	y��	 0 	splittext 	SplitTexty z�z o      �� 0 thetext TheText�  �  x k     L{{ |}| r     ~~ m     �� ���   o      �� 0 leftside LeftSide} ��� r    ��� m    �� ���  � o      �� 0 	rightside 	RightSide� ��� r    ��� m    	�
� boovfals� o      �� 0 halfway  � ��� X    F���� Z    A��� �� =    %��� l   #������ =    #��� l   !������ c    !��� o    ���� 0 eachcharacter EachCharacter� m     ��
�� 
ctxt��  ��  � m   ! "�� ���  ,��  ��  � m   # $��
�� boovfals� Z   ( ;������ l  ( +������ =   ( +��� o   ( )���� 0 halfway  � m   ) *��
�� boovfals��  ��  � r   . 3��� l  . 1������ b   . 1��� o   . /���� 0 leftside LeftSide� o   / 0���� 0 eachcharacter EachCharacter��  ��  � o      ���� 0 leftside LeftSide��  � r   6 ;��� l  6 9������ b   6 9��� o   6 7���� 0 	rightside 	RightSide� o   7 8���� 0 eachcharacter EachCharacter��  ��  � o      ���� 0 	rightside 	RightSide�   � r   > A��� m   > ?��
�� boovtrue� o      ���� 0 halfway  � 0 eachcharacter EachCharacter� l   ������ n    ��� 2   ��
�� 
cha � o    ���� 0 thetext TheText��  ��  � ���� L   G L�� J   G K�� ��� o   G H���� 0 leftside LeftSide� ���� o   H I���� 0 	rightside 	RightSide��  ��  v ��� l     ��������  ��  ��  � ��� i    ��� I      ������� *0 createmouseposition CreateMousePosition� ��� o      ���� 0 positionname PositionName� ���� o      ���� 0 
targetfile 
TargetFile��  ��  � k     9�� ��� r     ��� l    ������ I    �����
�� .sysoexecTEXT���     TEXT� m     �� ��� 2 / u s r / l o c a l / b i n / c l i c l i c k   p��  ��  ��  � o      ���� 0 fullline FullLine� ��� r    ��� l   ������ c    ��� o    	���� 0 fullline FullLine� m   	 
��
�� 
ctxt��  ��  � o      ���� 0 fullline FullLine� ��� r    ��� l   ������ c    ��� n    ��� 4   ���
�� 
cwor� m    ������� o    ���� 0 fullline FullLine� m    ��
�� 
ctxt��  ��  � o      ���� "0 bothcoordinates BothCoordinates� ��� r     ��� I    ������� 0 	splittext 	SplitText� ��� o    ���� "0 bothcoordinates BothCoordinates� ���� m    �� ���  ,��  ��  � o      ���� 0 coordinates  � ��� r   ! 1��� K   ! /�� ����
�� 
pnam� o   " #���� 0 positionname PositionName� ������ 0 x  � l  $ (������ n   $ (��� 4   % (���
�� 
cobj� m   & '���� � o   $ %���� 0 coordinates  ��  ��  � ������� 0 y  � l  ) -������ n   ) -��� 4   * -���
�� 
cobj� m   + ,���� � o   ) *���� 0 coordinates  ��  ��  ��  � o      ���� 0 position Position� ���� I   2 9������� &0 addpositiontofile AddPositionToFile� ��� o   3 4���� 0 position Position� ���� o   4 5���� 0 
targetfile 
TargetFile��  ��  ��  � ��� l     ��������  ��  ��  � ���� i       I      ������ 0 	srhandler   �� o      ���� 0 vars  ��  ��   k       r      n     	
	 o    ���� 0 	vardiddly 	varDiddly
 o     ���� 0 vars   o      ���� 0 positionname PositionName  r     l   	���� c    	 o    ���� 0 positionname PositionName m    ��
�� 
ctxt��  ��   o      ���� 0 positionname PositionName  r     l   ���� b     l   ���� c     l   ���� I   ����
�� .earsffdralis        afdr m    ��
�� afdmdesk��  ��  ��   m    ��
�� 
ctxt��  ��   m     �  M o u s e p o s i t i o n s��  ��   o      ���� 0 
targetfile 
TargetFile  ��  I    ��!���� *0 createmouseposition CreateMousePosition! "#" o    ���� 0 positionname PositionName# $��$ o    ���� 0 
targetfile 
TargetFile��  ��  ��  ��       ��%&'()*��  % ������������ &0 addpositiontofile AddPositionToFile�� 0 readfile ReadFile�� 0 	splittext 	SplitText�� *0 createmouseposition CreateMousePosition�� 0 	srhandler  & �� ����+,���� &0 addpositiontofile AddPositionToFile�� ��-�� -  ��~� 0 position Position�~ 0 
targetfile 
TargetFile��  + �}�|�{�z�y�x�w�v�u�t�s�r�q�p�} 0 position Position�| 0 
targetfile 
TargetFile�{ 0 repeated  �z 0 openfile OpenFile�y 0 allpositions AllPositions�x 0 	linetoadd 	LineToAdd�w 0 filenew FileNew�v  0 positionnumber PositionNumber�u 0 currentline CurrentLine�t 0 	leftaside 	LeftAside�s 0 
rightaside 
RightAside�r  0 annoyingdragon AnnoyingDragon�q 0 wordednumber WordedNumber�p 0 eachword EachWord, &�o�n�m�l�k�j�i J�h N�g R�f�e�d�c�b�a g�`�_�^�]�\ � � � � � � � �+/3�[�Z�Y
�o 
TEXT
�n 
file
�m 
perm
�l .rdwropenshor       file�k 0 readfile ReadFile�j  �i  
�h 
pnam�g 0 x  �f 0 y  
�e 
refn
�d 
wrat�c 
�b .rdwrwritnull���     ****
�a .rdwrclosnull���     ****
�` 
cpar
�_ .corecnte****       ****
�^ 
cobj
�] 
cwor�\��
�[ rdwreof 
�Z 
set2
�Y .rdwrseofnull���     ****����fE�O��&E�O*�/�el E�O *�k+ E�W -X  ��,%�%��,%�%��,%E�O����j� O�j OeOa E�O �k�a -j kh �a -a �/E�O�j l ��[a \[Zk\Za 2E�O��,a -E�O��  DeE�O�k  ���,%a %��,%a %��,%E�Y �a %��,%a %��,%a %��,%E�Y Wa E�O�k �a %E�Y hO 6k�a -j kh �k �a %E�Y hO�a �/E�O��%E�[OY��O��%E�Y h[OY�&O�f  3a  ��,%a !%��,%a "%��,%E�O����a #� O�j OeY �a $jl %O����j� O�j OeW X   
�j W X  hOf' �Xe�W�V./�U�X 0 readfile ReadFile�W �T0�T 0  �S�S 0 thefile TheFile�V  . �R�R 0 thefile TheFile/ �Q�P�O
�Q 
TEXT
�P 
file
�O .rdwrread****        ****�U ��&E�O*�/j ( �Nx�M�L12�K�N 0 	splittext 	SplitText�M �J3�J 3  �I�I 0 thetext TheText�L  1 �H�G�F�E�D�H 0 thetext TheText�G 0 leftside LeftSide�F 0 	rightside 	RightSide�E 0 halfway  �D 0 eachcharacter EachCharacter2 ���C�B�A�@�?�
�C 
cha 
�B 
kocl
�A 
cobj
�@ .corecnte****       ****
�? 
ctxt�K M�E�O�E�OfE�O 9��-[��l kh ��&� f  �f  
��%E�Y ��%E�Y eE�[OY��O��lv) �>��=�<45�;�> *0 createmouseposition CreateMousePosition�= �:6�: 6  �9�8�9 0 positionname PositionName�8 0 
targetfile 
TargetFile�<  4 �7�6�5�4�3�2�7 0 positionname PositionName�6 0 
targetfile 
TargetFile�5 0 fullline FullLine�4 "0 bothcoordinates BothCoordinates�3 0 coordinates  �2 0 position Position5 ��1�0�/��.�-�,�+�*�)�(
�1 .sysoexecTEXT���     TEXT
�0 
ctxt
�/ 
cwor�. 0 	splittext 	SplitText
�- 
pnam�, 0 x  
�+ 
cobj�* 0 y  �) �( &0 addpositiontofile AddPositionToFile�; :�j E�O��&E�O��i/�&E�O*��l+ E�O���k/��l/�E�O*��l+ * �'�&�%78�$�' 0 	srhandler  �& �#9�# 9  �"�" 0 vars  �%  7 �!� ��! 0 vars  �  0 positionname PositionName� 0 
targetfile 
TargetFile8 ������ 0 	vardiddly 	varDiddly
� 
ctxt
� afdmdesk
� .earsffdralis        afdr� *0 createmouseposition CreateMousePosition�$  ��,E�O��&E�O�j �&�%E�O*��l+  ascr  ��ޭ