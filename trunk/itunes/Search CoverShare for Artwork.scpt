FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ~x
iTunes script for retrieving cover art from http://www.covershare.com
Please support covershare, this script is useless without your help for covershare.
Copyright (C) 2008 Pruet Boonma <pruetboonma@gmail.com>
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
     * Redistributions of source code must retain the above copyright
       notice, this list of conditions and the following disclaimer.
     * Redistributions in binary form must reproduce the above copyright
       notice, this list of conditions and the following disclaimer in the
       documentation and/or other materials provided with the distribution.
     * Neither the name of the <organization> nor the
       names of its contributors may be used to endorse or promote products
       derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY Pruet Boonma ''AS IS'' AND ANY
EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL Pruet Boonma  BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
     � 	 	� 
 i T u n e s   s c r i p t   f o r   r e t r i e v i n g   c o v e r   a r t   f r o m   h t t p : / / w w w . c o v e r s h a r e . c o m 
 P l e a s e   s u p p o r t   c o v e r s h a r e ,   t h i s   s c r i p t   i s   u s e l e s s   w i t h o u t   y o u r   h e l p   f o r   c o v e r s h a r e . 
 C o p y r i g h t   ( C )   2 0 0 8   P r u e t   B o o n m a   < p r u e t b o o n m a @ g m a i l . c o m > 
 A l l   r i g h t s   r e s e r v e d . 
 
 R e d i s t r i b u t i o n   a n d   u s e   i n   s o u r c e   a n d   b i n a r y   f o r m s ,   w i t h   o r   w i t h o u t 
 m o d i f i c a t i o n ,   a r e   p e r m i t t e d   p r o v i d e d   t h a t   t h e   f o l l o w i n g   c o n d i t i o n s   a r e   m e t : 
           *   R e d i s t r i b u t i o n s   o f   s o u r c e   c o d e   m u s t   r e t a i n   t h e   a b o v e   c o p y r i g h t 
               n o t i c e ,   t h i s   l i s t   o f   c o n d i t i o n s   a n d   t h e   f o l l o w i n g   d i s c l a i m e r . 
           *   R e d i s t r i b u t i o n s   i n   b i n a r y   f o r m   m u s t   r e p r o d u c e   t h e   a b o v e   c o p y r i g h t 
               n o t i c e ,   t h i s   l i s t   o f   c o n d i t i o n s   a n d   t h e   f o l l o w i n g   d i s c l a i m e r   i n   t h e 
               d o c u m e n t a t i o n   a n d / o r   o t h e r   m a t e r i a l s   p r o v i d e d   w i t h   t h e   d i s t r i b u t i o n . 
           *   N e i t h e r   t h e   n a m e   o f   t h e   < o r g a n i z a t i o n >   n o r   t h e 
               n a m e s   o f   i t s   c o n t r i b u t o r s   m a y   b e   u s e d   t o   e n d o r s e   o r   p r o m o t e   p r o d u c t s 
               d e r i v e d   f r o m   t h i s   s o f t w a r e   w i t h o u t   s p e c i f i c   p r i o r   w r i t t e n   p e r m i s s i o n . 
 
 T H I S   S O F T W A R E   I S   P R O V I D E D   B Y   P r u e t   B o o n m a   ' ' A S   I S ' '   A N D   A N Y 
 E X P R E S S   O R   I M P L I E D   W A R R A N T I E S ,   I N C L U D I N G ,   B U T   N O T   L I M I T E D   T O ,   T H E   I M P L I E D 
 W A R R A N T I E S   O F   M E R C H A N T A B I L I T Y   A N D   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E   A R E 
 D I S C L A I M E D .   I N   N O   E V E N T   S H A L L   P r u e t   B o o n m a     B E   L I A B L E   F O R   A N Y 
 D I R E C T ,   I N D I R E C T ,   I N C I D E N T A L ,   S P E C I A L ,   E X E M P L A R Y ,   O R   C O N S E Q U E N T I A L   D A M A G E S 
 ( I N C L U D I N G ,   B U T   N O T   L I M I T E D   T O ,   P R O C U R E M E N T   O F   S U B S T I T U T E   G O O D S   O R   S E R V I C E S ; 
 L O S S   O F   U S E ,   D A T A ,   O R   P R O F I T S ;   O R   B U S I N E S S   I N T E R R U P T I O N )   H O W E V E R   C A U S E D   A N D 
 O N   A N Y   T H E O R Y   O F   L I A B I L I T Y ,   W H E T H E R   I N   C O N T R A C T ,   S T R I C T   L I A B I L I T Y ,   O R   T O R T 
 ( I N C L U D I N G   N E G L I G E N C E   O R   O T H E R W I S E )   A R I S I N G   I N   A N Y   W A Y   O U T   O F   T H E   U S E   O F   T H I S 
 S O F T W A R E ,   E V E N   I F   A D V I S E D   O F   T H E   P O S S I B I L I T Y   O F   S U C H   D A M A G E . 
   
  
 j     �� �� 0 baseurlalbum baseURLalbum  m        �   ^ h t t p : / / w w w . c o v e r s h a r e . c o m / a p i / s e a r c h . p h p ? a l b u m =      j    �� �� 0 baseurlartist baseURLartist  m       �   ` h t t p : / / w w w . c o v e r s h a r e . c o m / a p i / s e a r c h . p h p ? a r t i s t =      j    	�� �� 0 	filecache 	fileCache  J    ����        j   
 �� �� 0 albcache albCache  J   
 ����        j    �� �� 0 notfound notFound  J    ����        j    �� �� $0 previousselected previousSelected  m         � ! !     " # " j    �� $�� 0 img_path_array   $ J    ����   #  % & % j    �� '�� 0 album_array   ' J    ����   &  ( ) ( j     �� *�� 0 artist_array   * J    ����   )  + , + l     ��������  ��  ��   ,  - . - l     ��������  ��  ��   .  / 0 / l    c 1���� 1 O     c 2 3 2 k    b 4 4  5 6 5 l   �� 7 8��   7 3 - get a reference to playing or selected track    8 � 9 9 Z   g e t   a   r e f e r e n c e   t o   p l a y i n g   o r   s e l e c t e d   t r a c k 6  :�� : Z    b ; < =�� ; =   
 > ? > 1    ��
�� 
sele ? J    	����   < k     @ @  A B A l   ��������  ��  ��   B  C�� C I   �� D E
�� .sysodlogaskr        TEXT D m     F F � G G > N o t h i n g   i s   p l a y i n g   o r   s e l e c t e d . E �� H I
�� 
btns H l 
   J���� J J     K K  L�� L m     M M � N N  C a n c e l��  ��  ��   I �� O P
�� 
dflt O m    ����  P �� Q��
�� 
disp Q m    ����  ��  ��   =  R S R =   " T U T 1     ��
�� 
pPlS U m     !��
�� ePlSkPSS S  V�� V k   % ^ W W  X Y X I  % *�� Z��
�� .sysodlogaskr        TEXT Z m   % & [ [ � \ \� T h i s   s c r i p t   t r i e s   t o   r e t r i e v e   c o v e r   a r t   f r o m   t h e   s e l e c t e d   s o n g   f r o m   c o v e r s h a r e . c o m ,   i t   m i g h t   t a k e   s o m e t i m e ,   s o   p l e a s e   b e   p a t i e n t .     W h e n   t h e   s c r i p t   f i n i s h e s ,   i t   w i l l   s h o w   a   d i a l o g   s a y i n g   s o .   C l i c k   O K   t o   s t a r t ,   c a n c e l   t o   . . .   c a n c e l .��   Y  ] ^ ] r   + 0 _ ` _ 1   + .��
�� 
sele ` o      ���� 0 sel   ^  a b a l  1 1��������  ��  ��   b  c d c X   1 L e�� f e n  A G g h g I   B G�� i���� 0 processtrack processTrack i  j�� j o   B C���� 0 a_track  ��  ��   h  f   A B�� 0 a_track   f o   4 5���� 0 sel   d  k l k n  M R m n m I   N R�������� 0 cleanup cleanUp��  ��   n  f   M N l  o�� o I  S ^�� p q
�� .sysodlogaskr        TEXT p m   S V r r � s s  F i n i s h e d q �� t��
�� 
btns t m   W Z u u � v v  O K��  ��  ��  ��  ��   3 m      w w�                                                                                  hook   alis    L  Macintosh HD               �&��H+     �
iTunes.app                                                      U/�0�        ����  	                Applications    �&��      �i1       �  $Macintosh HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c i n t o s h   H D  Applications/iTunes.app   / ��  ��  ��   0  x y x l     ��������  ��  ��   y  z { z i   ! $ | } | I      �������� 0 cleanup cleanUp��  ��   } O     7 ~  ~ k    6 � �  � � � I   	������
�� .ascrnoop****      � ****��  ��   �  ��� � X   
 6 ��� � � k    1 � �  � � � I   &�� ���
�� .coredelonull���    ditm � 4    "�� �
�� 
file � o     !���� 0 songpath songPath��   �  ��� � I  ' 1�� ���
�� .coredelonull���    ditm � 4   ' -�� �
�� 
file � l  ) , ����� � b   ) , � � � o   ) *���� 0 songpath songPath � m   * + � � � � � 
 . p i c t��  ��  ��  ��  �� 0 songpath songPath � o    ���� 0 	filecache 	fileCache��    m      � ��                                                                                  imev   alis    �  Macintosh HD               �&��H+     �Image Events.app                                                 ���        ����  	                CoreServices    �&��      ��Z       �   P   O  9Macintosh HD:System:Library:CoreServices:Image Events.app   "  I m a g e   E v e n t s . a p p    M a c i n t o s h   H D  ,System/Library/CoreServices/Image Events.app  / ��   {  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � i   % ( � � � I      �� ����� 0 processtrack processTrack �  ��� � o      ���� 0 thetrack theTrack��  ��   � O    m � � � k   l � �  � � � Z     � ����� � l    ����� � =     � � � l    ����� � I   ���� �
�� .sysooffslong    ��� null��   � �� � �
�� 
psof � m     � � � � �  a u d i o   f i l e � �� ���
�� 
psin � l    ����� � c     � � � n    � � � 1   	 ��
�� 
pKnd � o    	���� 0 thetrack theTrack � m    ��
�� 
ctxt��  ��  ��  ��  ��   � m    ����  ��  ��   � L    ����  ��  ��   �  � � � O    C � � � k   ! B � �  � � � r   ! + � � � n  ! ) � � � I   " )�� ����� 0 fixchars fixChars �  ��� � 1   " %��
�� 
pAlb��  ��   �  f   ! " � o      ���� 0 alb   �  � � � r   , 1 � � � 1   , /��
�� 
pAlb � o      ���� 0 orig_alb   �  � � � r   2 < � � � n  2 : � � � I   3 :� ��~� 0 fixchars fixChars �  ��} � 1   3 6�|
�| 
pArt�}  �~   �  f   2 3 � o      �{�{ 0 alt   �  ��z � r   = B � � � 1   = @�y
�y 
pArt � o      �x�x 0 orig_alt  �z   � o    �w�w 0 thetrack theTrack �  � � � Z   D s � ��v � � >   D G � � � o   D E�u�u 0 alb   � m   E F � � � � �   � r   J \ � � � c   J Z � � � l  J X ��t�s � b   J X � � � o   J O�r�r 0 baseurlalbum baseURLalbum � l  O W ��q�p � n  O W � � � I   P W�o ��n�o 0 replace_chars   �  � � � l  P Q ��m�l � o   P Q�k�k 0 alb  �m  �l   �  � � � m   Q R � � � � �    �  ��j � m   R S � � � � �  +�j  �n   �  f   O P�q  �p  �t  �s   � m   X Y�i
�i 
ctxt � o      �h�h 0 theurl theURL�v   � r   _ s � � � c   _ q � � � l  _ o ��g�f � b   _ o � � � o   _ d�e�e 0 baseurlartist baseURLartist � l  d n ��d�c � n  d n � � � I   e n�b ��a�b 0 replace_chars   �  � � � l  e f ��`�_ � o   e f�^�^ 0 alt  �`  �_   �  � � � m   f g   �    � �] m   g j �  +�]  �a   �  f   d e�d  �c  �g  �f   � m   o p�\
�\ 
ctxt � o      �[�[ 0 theurl theURL �  l  t t�Z�Y�X�Z  �Y  �X    n  t z	
	 I   u z�W�V�W $0 retrievesonginfo retrieveSongInfo �U o   u v�T�T 0 theurl theURL�U  �V  
  f   t u  l  { {�S�R�Q�S  �R  �Q   �P Z   {l�O =   { � l  { ��N�M n   { � 1   � ��L
�L 
leng o   { ��K�K 0 img_path_array  �N  �M   m   � ��J�J   Z   � ��I�H H   � � E  � � o   � ��G�G 0 notfound notFound o   � ��F�F 0 alb   k   � �  I  � ��E �D
�E .sysodlogaskr        TEXT  l  � �!�C�B! b   � �"#" b   � �$%$ b   � �&'& b   � �()( m   � �** �++ R C a n n o t   f i n d   a n y   a r t w o r k   w i t h   a l b u m   n a m e   ") o   � ��A�A 0 orig_alb  ' m   � �,, �-- & "   a n d   a r t i s t   n a m e   "% o   � ��@�@ 0 orig_alt  # m   � �.. �//  "�C  �B  �D   0�?0 r   � �121 o   � ��>�> 0 alb  2 l     3�=�<3 n      454  ;   � �5 o   � ��;�; 0 notfound notFound�=  �<  �?  �I  �H  �O   k   �l66 787 Z   �i9:�:;9 ?   � �<=< l  � �>�9�8> n   � �?@? 1   � ��7
�7 
leng@ o   � ��6�6 0 img_path_array  �9  �8  = m   � ��5�5 : k   �PAA BCB Z   �DE�4FD H   � �GG E  � �HIH o   � ��3�3 0 albcache albCacheI o   � ��2�2 0 alb  E k   �JJ KLK r   � �MNM m   � �OO �PP  N o n e   o f   a b o v eN l     Q�1�0Q n      RSR  ;   � �S o   � ��/�/ 0 album_array  �1  �0  L TUT r   � �VWV I  � ��.XY
�. .gtqpchltTEXT  @   @ TEXTX o   � ��-�- 0 album_array  Y �,Z[
�, 
prmpZ l  � �\�+�*\ b   � �]^] b   � �_`_ b   � �aba b   � �cdc m   � �ee �ff Z F o u n d   m u l t i p l e   a r t w o r k s   m a t c h e d     a l b u m   n a m e   "d o   � ��)�) 0 orig_alb  b m   � �gg �hh & "   a n d   a r t i s t   n a m e   "` o   � ��(�( 0 alt  ^ m   � �ii �jj � " ,   p l e a s e   p i c k   t h e   o n e   y o u   w a n t   f r o m   t h e   l i s t   b e l o w ,   t h e n   c l i c k   O K�+  �*  [ �'k�&
�' 
mlslk m   � ��%
�% boovfals�&  W o      �$�$ 0 selected  U lml r   �non o   � ��#�# 0 alb  o l     p�"�!p n      qrq  ;  r o   �� �  0 albcache albCache�"  �!  m s�s r  tut o  �� 0 selected  u o      �� $0 previousselected previousSelected�  �4  F r  vwv o  �� $0 previousselected previousSelectedw o      �� 0 selected  C x�x Z  Pyz�{y G  )|}| = ~~ c  ��� o  �� 0 selected  � m  �
� 
ctxt m  �� ���  N o n e   o f   a b o v e} = "%��� o  "#�� 0 selected  � m  #$�
� boovfalsz r  ,1��� m  ,/�� ���  � o      �� 0 theurl theURL�  { k  4P�� ��� r  4A��� l 4?���� n 4?��� I  5?���� $0 getlistitemindex getListItemIndex� ��� o  5:�� 0 album_array  � ��� o  :;�� 0 selected  �  �  �  f  45�  �  � o      �� 0 idx  � ��� r  BP��� l BN��
�	� n  BN��� 4  GN��
� 
cobj� l JM���� [  JM��� o  JK�� 0 idx  � m  KL��  �  �  � o  BG�� 0 img_path_array  �
  �	  � o      �� 0 theurl theURL�  �  �:  ; k  Si�� ��� r  S\��� m  SV�� ���  � o      �� $0 previousselected previousSelected� �� � r  ]i��� l ]g������ n  ]g��� 4  bg���
�� 
cobj� m  ef���� � o  ]b���� 0 img_path_array  ��  ��  � o      ���� 0 theurl theURL�   8 ��� l jj��������  ��  ��  � ���� Z  jl������� > jo��� o  jk���� 0 theurl theURL� m  kn�� ���  � k  rh�� ��� r  r}��� m  ru�� ���  /� n     ��� 1  x|��
�� 
txdl� 1  ux��
�� 
ascr� ��� r  ~���� n  ~���� 2  ���
�� 
citm� o  ~���� 0 theurl theURL� o      ���� 	0 names  � ��� r  ����� J  ���� ���� m  ���� ���  ��  � n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� n  ����� 4  �����
�� 
cobj� l �������� I �������
�� .corecnte****       ****� o  ������ 	0 names  ��  ��  ��  � o  ������ 	0 names  � o      ���� 0 filename fileName� ��� l ����������  ��  ��  � ���� Q  �h���� k  �9�� ��� r  ����� b  ����� m  ���� ��� 
 / t m p /� o  ������ 0 filename fileName� o      ���� 0 filename fileName� ��� Z  �������� H  ���� E ����� o  ������ 0 	filecache 	fileCache� o  ������ 0 filename fileName� l ����� k  ��� ��� I �������
�� .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� m  ���� ���  c u r l   - o  � o  ������ 0 filename fileName� m  ���� ���   � n  ��   1  ����
�� 
strq o  ������ 0 theurl theURL��  �  l ����������  ��  ��    r  �� o  ������ 0 filename fileName l     ���� n      	
	  ;  ��
 o  ������ 0 	filecache 	fileCache��  ��   �� O  � k  �  I ��������
�� .ascrnoop****      � ****��  ��    r  �� I ������
�� .aevtodocnull  �    alis o  ������ 0 filename fileName��   o      ���� 0 	the_image    I ����
�� .coresavenull���    obj  o  ������ 0 	the_image   ��
�� 
fltp m  ����
�� typvPICT ����
�� 
kfil l ������ b  �� o  ������ 0 filename fileName m  ��   �!! 
 . p i c t��  ��  ��   "��" I ���#��
�� .coreclosnull���    obj # o  ������ 0 	the_image  ��  ��   m  ��$$�                                                                                  imev   alis    �  Macintosh HD               �&��H+     �Image Events.app                                                 ���        ����  	                CoreServices    �&��      ��Z       �   P   O  9Macintosh HD:System:Library:CoreServices:Image Events.app   "  I m a g e   E v e n t s . a p p    M a c i n t o s h   H D  ,System/Library/CoreServices/Image Events.app  / ��  ��  � 6 0 if the file is not already in fileCache, get it   � �%% `   i f   t h e   f i l e   i s   n o t   a l r e a d y   i n   f i l e C a c h e ,   g e t   i t��  ��  � &'& r  ()( I ��*��
�� .rdwropenshor       file* l +����+ b  ,-, o  ���� 0 filename fileName- m  .. �// 
 . p i c t��  ��  ��  ) o      ���� 0 fileref fileRef' 010 r  &232 I $��45
�� .rdwrread****        ****4 o  ���� 0 fileref fileRef5 ��67
�� 
rdfm6 m  ����7 ��8��
�� 
as  8 m   ��
�� 
PICT��  3 o      ���� 0 the_artwork  1 9:9 I ',��;��
�� .rdwrclosnull���     ****; o  '(���� 0 fileref fileRef��  : <��< r  -9=>= o  -.���� 0 the_artwork  > n      ?@? 1  48��
�� 
pPCT@ n  .4ABA 4  /4��C
�� 
cArtC m  23���� B o  ./���� 0 thetrack theTrack��  � R      ��D��
�� .ascrerr ****      � ****D o      ���� 0 m  ��  � k  AhEE FGF l AA��HI��  H 
 beep   I �JJ  b e e pG KLK I AP��M��
�� .sysodlogaskr        TEXTM b  ALNON b  AJPQP b  AFRSR m  ADTT �UU T G o t   e r r o r   w h e n   p r o c e s s i n g   a   s o n g   i n   a l b u m  S o  DE���� 0 alb  Q m  FIVV �WW X ,   t h i s   s o n g   w i l l   b e   s k i p p e d .  	 	 	 	   E r r o r   M s g :O o  JK���� 0 m  ��  L X��X Q  QhYZ��Y k  T_[[ \]\ I TY��^��
�� .coreclosnull���    obj ^ o  TU���� 0 	the_image  ��  ] _��_ I Z_��`��
�� .rdwrclosnull���     ****` o  Z[���� 0 fileref fileRef��  ��  Z R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  ��  ��  ��  �P   � m     aa�                                                                                  hook   alis    L  Macintosh HD               �&��H+     �
iTunes.app                                                      U/�0�        ����  	                Applications    �&��      �i1       �  $Macintosh HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c i n t o s h   H D  Applications/iTunes.app   / ��   � bcb l     ��������  ��  ��  c ded i   ) ,fgf I      ��h���� $0 retrievesonginfo retrieveSongInfoh i��i o      ���� 0 theurl theURL��  ��  g k     �jj klk r     mnm I    	��o��
�� .sysoexecTEXT���     TEXTo b     pqp m     rr �ss 
 c u r l  q n    tut 1    ��
�� 
strqu o    ���� 0 theurl theURL��  n o      ���� 0 json  l vwv r    xyx m    zz �{{  ,y n     |}| 1    ��
�� 
txdl} 1    �
� 
ascrw ~~ r    ��� n    ��� 2    �~
�~ 
citm� o    �}�} 0 json  � o      �|�| 0 
json_array   ��� r    ��� J    �� ��{� m    �� ���  �{  � n     ��� 1    �z
�z 
txdl� 1    �y
�y 
ascr� ��� r     #��� m     !�x�x  � o      �w�w 0 	img_count  � ��� r   $ ,��� J   $ &�v�v  � o      �u�u 0 img_path_array  � ��� r   - 5��� J   - /�t�t  � o      �s�s 0 album_array  � ��� r   6 >��� J   6 8�r�r  � o      �q�q 0 artist_array  � ��� r   ? B��� m   ? @�p�p  � o      �o�o 0 idx  � ��n� X   C ���m�� Z   S �����l� ?   S ^��� l  S \��k�j� I  S \�i�h�
�i .sysooffslong    ��� null�h  � �g��
�g 
psof� m   U V�� ���  r e s u l t� �f��e
�f 
psin� o   W X�d�d 0 itm  �e  �k  �j  � m   \ ]�c�c  � k   a ��� ��� r   a i��� n  a g��� I   b g�b��a�b 0 processstring processString� ��`� o   b c�_�_ 0 itm  �`  �a  �  f   a b� o      �^�^ 0 idx  � ��� r   j t��� m   j m�� ���  � l     ��]�\� n      ���  ;   r s� o   m r�[�[ 0 img_path_array  �]  �\  � ��� r   u ��� m   u x�� ���  � l     ��Z�Y� n      ���  ;   } ~� o   x }�X�X 0 album_array  �Z  �Y  � ��W� r   � ���� m   � ��� ���  � l     ��V�U� n      ���  ;   � �� o   � ��T�T 0 artist_array  �V  �U  �W  � ��� ?   � ���� l  � ���S�R� I  � ��Q�P�
�Q .sysooffslong    ��� null�P  � �O��
�O 
psof� m   � ��� ���  a r t w o r k� �N��M
�N 
psin� o   � ��L�L 0 itm  �M  �S  �R  � m   � ��K�K  � ��� r   � ���� l  � ���J�I� n  � ���� I   � ��H��G�H 0 processstring processString� ��F� o   � ��E�E 0 itm  �F  �G  �  f   � ��J  �I  � n      ��� 4   � ��D�
�D 
cobj� l  � ���C�B� [   � ���� o   � ��A�A 0 idx  � m   � ��@�@  �C  �B  � o   � ��?�? 0 img_path_array  � ��� ?   � ���� l  � ���>�=� I  � ��<�;�
�< .sysooffslong    ��� null�;  � �:��
�: 
psof� m   � ��� ��� 
 a l b u m� �9��8
�9 
psin� o   � ��7�7 0 itm  �8  �>  �=  � m   � ��6�6  � ��� r   � ���� l  � ���5�4� n  � ���� I   � ��3 �2�3 0 processstring processString  �1 o   � ��0�0 0 itm  �1  �2  �  f   � ��5  �4  � n       4   � ��/
�/ 
cobj l  � ��.�- [   � � o   � ��,�, 0 idx   m   � ��+�+  �.  �-   o   � ��*�* 0 album_array  � 	 ?   � �

 l  � ��)�( I  � ��'�&
�' .sysooffslong    ��� null�&   �%
�% 
psof m   � � �  a r t i s t �$�#
�$ 
psin o   � ��"�" 0 itm  �#  �)  �(   m   � ��!�!  	 �  r   � � l  � ��� n  � � I   � ���� 0 processstring processString � o   � ��� 0 itm  �  �    f   � ��  �   n       4   � ��
� 
cobj l  � ��� [   � �  o   � ��� 0 idx    m   � ���  �  �   o   � ��� 0 artist_array  �   �l  �m 0 itm  � o   F G�� 0 
json_array  �n  e !"! l     ����  �  �  " #$# i   - 0%&% I      �'�� 0 processstring processString' (�( o      �� 0 itm  �  �  & k    )) *+* r     ,-, m     .. �//  " : "- n     010 1    �
� 
txdl1 1    �

�
 
ascr+ 232 r    454 n    	676 2    	�	
�	 
citm7 o    �� 0 itm  5 o      �� 0 	itm_array  3 898 r    :;: J    << =�= m    >> �??  �  ; n     @A@ 1    �
� 
txdlA 1    �
� 
ascr9 BCB r    DED n    FGF 4    �H
� 
cobjH m    �� G o    �� 0 	itm_array  E o      � �  0 artw  C IJI r    %KLK n   #MNM I    #��O���� 0 replace_chars  O PQP o    ���� 0 artw  Q RSR m    TT �UU  "S V��V m    WW �XX  ��  ��  N  f    L o      ���� 0 artw  J YZY l  & &��������  ��  ��  Z [\[ r   & -]^] J   & )__ `��` m   & 'aa �bb  \��  ^ n     cdc 1   * ,��
�� 
txdld 1   ) *��
�� 
ascr\ efe r   . 3ghg n   . 1iji 2   / 1��
�� 
citmj o   . /���� 0 artw  h o      ���� 0 
artw_array  f klk r   4 ;mnm J   4 7oo p��p m   4 5qq �rr  ��  n n     sts 1   8 :��
�� 
txdlt 1   7 8��
�� 
ascrl uvu l  < <��������  ��  ��  v wxw r   < ?yzy m   < ={{ �||  z o      ���� 0 artw  x }~} X   @��� Z   P ������� C   P S��� o   P Q���� 	0 aitem  � m   Q R�� ���  u� Z   V ������� =   V ]��� n   V Y��� 1   W Y��
�� 
leng� o   V W���� 	0 aitem  � m   Y \���� � k   ` ~�� ��� r   ` h��� n  ` f��� I   a f������� 0 lstrip_string  � ���� o   a b���� 	0 aitem  ��  ��  �  f   ` a� o      ���� 	0 aitem  � ��� r   i x��� l  i v������ I  i v�����
�� .sysodsct****        scpt� b   i r��� b   i n��� m   i l�� ���  � d a t a   u t x t� o   l m���� 	0 aitem  � m   n q�� ��� $ �     a s   U n i c o d e   t e x t��  ��  ��  � o      ���� 	0 uitem  � ���� r   y ~��� b   y |��� o   y z���� 0 artw  � o   z {���� 	0 uitem  � o      ���� 0 artw  ��  ��  � k   � ��� ��� r   � ���� J   � ��� ���� m   � ��� ���   ��  � n     ��� 1   � ���
�� 
txdl� 1   � ���
�� 
ascr� ��� r   � ���� n   � ���� 2   � ���
�� 
citm� o   � ����� 	0 aitem  � o      ���� 0 aitem_array  � ��� r   � ���� J   � ��� ���� m   � ��� ���  ��  � n     ��� 1   � ���
�� 
txdl� 1   � ���
�� 
ascr� ���� X   � ������ Z   � ������� F   � ���� =   � ���� n   � ���� 1   � ���
�� 
leng� o   � ����� 
0 aaitem  � m   � ����� � C   � ���� o   � ����� 
0 aaitem  � m   � ��� ���  u� k   � ��� ��� r   � ���� n  � ���� I   � �������� 0 lstrip_string  � ���� o   � ����� 
0 aaitem  ��  ��  �  f   � �� o      ���� 
0 aaitem  � ��� r   � ���� l  � ������� I  � ������
�� .sysodsct****        scpt� b   � ���� b   � ���� m   � ��� ���  � d a t a   u t x t� o   � ����� 
0 aaitem  � m   � ��� ��� $ �     a s   U n i c o d e   t e x t��  ��  ��  � o      ���� 	0 uitem  � ���� r   � ���� b   � ���� b   � ���� o   � ����� 0 artw  � o   � ����� 	0 uitem  � m   � ��� ���   � o      ���� 0 artw  ��  ��  � r   � ���� b   � ���� b   � ���� o   � ����� 0 artw  � o   � ����� 
0 aaitem  � m   � ��� ���   � o      ���� 0 artw  �� 
0 aaitem  � o   � ����� 0 aitem_array  ��  ��  � r   � ���� b   � �   o   � ����� 0 artw   o   � ����� 	0 aitem  � o      ���� 0 artw  �� 	0 aitem  � o   C D���� 0 
artw_array  ~  r   n  I  ������ 0 replace_string   	
	 o  ���� 0 artw  
  m   � 
 & a m p ; �� m  
 �  &��  ��    f   o      ���� 0 artw    l ����   2 ,set artw to my replace_chars(artw, "\\", "")    � X s e t   a r t w   t o   m y   r e p l a c e _ c h a r s ( a r t w ,   " \ \ " ,   " " ) �� L   c   o  ���� 0 artw   m  ��
�� 
utxt��  $  l     ��������  ��  ��    i   1 4  I      ��!���� 0 fixchars fixChars! "��" o      ���� 0 a  ��  ��    k     ## $%$ r     
&'& n    ()( I    ��*���� 0 replace_string  * +,+ o    ���� 0 a  , -.- m    // �00  &. 1��1 m    22 �33 
 & a m p ;��  ��  )  f     ' o      ���� 0 a  % 4��4 L    55 o    ���� 0 a  ��   676 l     ��������  ��  ��  7 898 l     ��������  ��  ��  9 :;: i   5 8<=< I      ��>���� 0 lstrip_string  > ?��? o      ���� 0 thetext theText��  ��  = k     @@ ABA r     CDC c     EFE n     GHG 7   ��IJ
�� 
cha I l   K����K m    ���� ��  ��  J m    
������H o     ���� 0 thetext theTextF m    ��
�� 
ctxtD o      ���� 0 thetext theTextB L��L L    MM o    ���� 0 thetext theText��  ; NON l     ��������  ��  ��  O PQP i   9 <RSR I      �T�~� 0 replace_string  T UVU o      �}�} 0 thetext theTextV WXW o      �|�| 0 	oldstring 	oldStringX Y�{Y o      �z�z 0 	newstring 	newString�{  �~  S k      ZZ [\[ r     ]^] o     �y�y 0 	oldstring 	oldString^ n     _`_ 1    �x
�x 
txdl` 1    �w
�w 
ascr\ aba r    cdc n    	efe 2    	�v
�v 
citmf o    �u�u 0 thetext theTextd o      �t�t 0 templist tempListb ghg r    iji o    �s�s 0 	newstring 	newStringj n     klk 1    �r
�r 
txdll 1    �q
�q 
ascrh mnm r    opo c    qrq l   s�p�os o    �n�n 0 templist tempList�p  �o  r m    �m
�m 
TEXTp o      �l�l 0 thetext theTextn tut r    vwv m    xx �yy  w n     z{z 1    �k
�k 
txdl{ 1    �j
�j 
ascru |�i| L     }} o    �h�h 0 thetext theText�i  Q ~~ l     �g�f�e�g  �f  �e   ��� i   = @��� I      �d��c�d 0 replace_chars  � ��� o      �b�b 0 txt  � ��� o      �a�a 0 srch  � ��`� o      �_�_ 0 repl  �`  �c  � k      �� ��� r     ��� l    ��^�]� o     �\�\ 0 srch  �^  �]  � n     ��� 1    �[
�[ 
txdl� 1    �Z
�Z 
ascr� ��� r    ��� n    	��� 2    	�Y
�Y 
citm� o    �X�X 0 txt  � l     ��W�V� o      �U�U 0 	item_list  �W  �V  � ��� r    ��� l   ��T�S� o    �R�R 0 repl  �T  �S  � n     ��� 1    �Q
�Q 
txdl� 1    �P
�P 
ascr� ��� r    ��� c    ��� l   ��O�N� o    �M�M 0 	item_list  �O  �N  � m    �L
�L 
TEXT� o      �K�K 0 txt  � ��� r    ��� m    �� ���  � n     ��� 1    �J
�J 
txdl� 1    �I
�I 
ascr� ��H� L     �� o    �G�G 0 txt  �H  � ��� l     �F�E�D�F  �E  �D  � ��� i   A D��� I      �C��B�C  0 countsubstring countSubstring� ��� o      �A�A 0 thetext theText� ��@� o      �?�? 0 thesubstring theSubstring�@  �B  � k     �� ��� r     ��� o     �>�> 0 thesubstring theSubstring� n     ��� 1    �=
�= 
txdl� 1    �<
�< 
ascr� ��� r    ��� \    ��� l   ��;�:� I   �9��8
�9 .corecnte****       ****� n    	��� 2    	�7
�7 
citm� o    �6�6 0 thetext theText�8  �;  �:  � m    �5�5 � o      �4�4 0 counter  � ��� r    ��� m    �� ���  � n     ��� 1    �3
�3 
txdl� 1    �2
�2 
ascr� ��1� L    �� o    �0�0 0 counter  �1  � ��� l     �/�.�-�/  �.  �-  � ��� i   E H��� I      �,��+�, $0 getlistitemindex getListItemIndex� ��� o      �*�* 0 thelist theList� ��)� o      �(�( 0 theitem theItem�)  �+  � k     )�� ��� Y     &��'���&� Z   !���%�$� =   ��� c    ��� l   ��#�"� n    ��� 4    �!�
�! 
cobj� o    � �  0 i  � o    �� 0 thelist theList�#  �"  � m    �
� 
ctxt� c    ��� o    �� 0 theitem theItem� m    �
� 
ctxt� L    �� o    �� 0 i  �%  �$  �' 0 i  � m    �� � I   	���
� .corecnte****       ****� o    �� 0 thelist theList�  �&  � ��� L   ' )�� m   ' (��  �  � ��� l     ����  �  �  �       ��  ���  ����� �  � ������
�	��������� ��������� 0 baseurlalbum baseURLalbum� 0 baseurlartist baseURLartist� 0 	filecache 	fileCache� 0 albcache albCache� 0 notfound notFound�
 $0 previousselected previousSelected�	 0 img_path_array  � 0 album_array  � 0 artist_array  � 0 cleanup cleanUp� 0 processtrack processTrack� $0 retrievesonginfo retrieveSongInfo� 0 processstring processString� 0 fixchars fixChars� 0 lstrip_string  �  0 replace_string  �� 0 replace_chars  ��  0 countsubstring countSubstring�� $0 getlistitemindex getListItemIndex
�� .aevtoappnull  �   � ****� ������  ��  � ������  ��  � ������  ��  � ������  ��  � ������  ��  � ������  ��  � �� }����	
���� 0 cleanup cleanUp��  ��  	 ���� 0 songpath songPath
  ������������� �
�� .ascrnoop****      � ****
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
file
�� .coredelonull���    ditm�� 8� 4*j O +b  [��l kh  *�/j O*��%/j [OY��U� �� ��������� 0 processtrack processTrack�� ����   ���� 0 thetrack theTrack��   ������������������������������ 0 thetrack theTrack�� 0 alb  �� 0 orig_alb  �� 0 alt  �� 0 orig_alt  �� 0 theurl theURL�� 0 selected  �� 0 idx  �� 	0 names  �� 0 filename fileName�� 0 	the_image  �� 0 fileref fileRef�� 0 the_artwork  �� 0 m   Ha�� ����������������� � � ��� ����*,.��O��egi�������������������������������$���������� ����.����������������������TV��
�� 
psof
�� 
psin
�� 
pKnd
�� 
ctxt�� 
�� .sysooffslong    ��� null
�� 
pAlb�� 0 fixchars fixChars
�� 
pArt�� 0 replace_chars  �� $0 retrievesonginfo retrieveSongInfo
�� 
leng
�� .sysodlogaskr        TEXT
�� 
prmp
�� 
mlsl
�� .gtqpchltTEXT  @   @ TEXT
�� 
bool�� $0 getlistitemindex getListItemIndex
�� 
cobj
�� 
ascr
�� 
txdl
�� 
citm
�� .corecnte****       ****
�� 
strq
�� .sysoexecTEXT���     TEXT
�� .ascrnoop****      � ****
�� .aevtodocnull  �    alis
�� 
fltp
�� typvPICT
�� 
kfil
�� .coresavenull���    obj 
�� .coreclosnull���    obj 
�� .rdwropenshor       file
�� 
rdfm��
�� 
as  
�� 
PICT
�� .rdwrread****        ****
�� .rdwrclosnull���     ****
�� 
cArt
�� 
pPCT�� 0 m  ��  ��  ��n�j*����,�&� j  hY hO� #)*�,k+ 	E�O*�,E�O)*�,k+ 	E�O*�,E�UO�� b   )���m+ %�&E�Y b  )��a m+ %�&E�O)�k+ Ob  a ,j  0b  � !a �%a %�%a %j O�b  6FY hY�b  a ,k �b  � Ba b  6FOb  a a �%a %�%a %a f� E�O�b  6FO�Ec  Y 	b  E�O��&a  
 	�f a & 
a  E�Y )b  �l+ !E�Ob  a "�j/E�Y a #Ec  Ob  a "k/E�O�a $ �a %_ &a ',FO�a (-E�Oa )kv_ &a ',FO�a "�j */E�O �a +�%E�Ob  � Pa ,�%a -%�a .,%j /O�b  6FOa 0 )*j 1O�j 2E�O�a 3a 4a 5�a 6%� 7O�j 8UY hO�a 9%j :E�O�a ;a <a =a >� ?E�O�j @O��a Ak/a B,FW .X C Da E�%a F%�%j O �j 8O�j @W X G DhY hU  ��g�������� $0 retrievesonginfo retrieveSongInfo�� ����   ���� 0 theurl theURL��   �������������� 0 theurl theURL�� 0 json  �� 0 
json_array  �� 0 	img_count  �� 0 idx  �� 0 itm   r����z�����������������������������
�� 
strq
�� .sysoexecTEXT���     TEXT
�� 
ascr
�� 
txdl
�� 
citm
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null�� 0 processstring processString�� ��,%j E�O���,FO��-E�O�kv��,FOjE�OjvEc  OjvEc  OjvEc  OjE�O ��[��l 
kh *����� j .)�k+ E�Oa b  6FOa b  6FOa b  6FY o*�a ��� j )�k+ b  �j/FY K*�a ��� j )�k+ b  �j/FY '*�a ��� j )�k+ b  �j/FY h[OY�S ��&�������� 0 processstring processString�� ����   ���� 0 itm  ��   ��������������~�� 0 itm  �� 0 	itm_array  �� 0 artw  �� 0 
artw_array  �� 	0 aitem  �� 	0 uitem  � 0 aitem_array  �~ 
0 aaitem   !.�}�|�{>�zTW�yaq{�x�w��v�u�t���s����r�����q�p
�} 
ascr
�| 
txdl
�{ 
citm
�z 
cobj�y 0 replace_chars  
�x 
kocl
�w .corecnte****       ****
�v 
leng�u �t 0 lstrip_string  
�s .sysodsct****        scpt
�r 
bool�q 0 replace_string  
�p 
utxt�����,FO��-E�O�kv��,FO��l/E�O)���m+ E�O�kv��,FO��-E�O�kv��,FO�E�O ��[��l kh �� ���,a   #)�k+ E�Oa �%a %j E�O��%E�Y ua kv��,FO��-E�Oa kv��,FO X�[��l kh ��,a  	 �a a & ')�k+ E�Oa �%a %j E�O��%a %E�Y ��%a %E�[OY��Y ��%E�[OY�NO)�a a m+ E�O�a  & �o �n�m�l�o 0 fixchars fixChars�n �k�k   �j�j 0 a  �m   �i�i 0 a   /2�h�h 0 replace_string  �l )���m+ E�O� �g=�f�e�d�g 0 lstrip_string  �f �c�c   �b�b 0 thetext theText�e   �a�a 0 thetext theText �`�_
�` 
cha 
�_ 
ctxt�d �[�\[Zl\Zi2�&E�O� �^S�]�\�[�^ 0 replace_string  �] �Z�Z   �Y�X�W�Y 0 thetext theText�X 0 	oldstring 	oldString�W 0 	newstring 	newString�\   �V�U�T�S�V 0 thetext theText�U 0 	oldstring 	oldString�T 0 	newstring 	newString�S 0 templist tempList �R�Q�P�Ox
�R 
ascr
�Q 
txdl
�P 
citm
�O 
TEXT�[ !���,FO��-E�O���,FO��&E�O���,FO� �N��M�L�K�N 0 replace_chars  �M �J�J   �I�H�G�I 0 txt  �H 0 srch  �G 0 repl  �L   �F�E�D�C�F 0 txt  �E 0 srch  �D 0 repl  �C 0 	item_list   �B�A�@�?�
�B 
ascr
�A 
txdl
�@ 
citm
�? 
TEXT�K !���,FO��-E�O���,FO��&E�O���,FO� �>��=�< !�;�>  0 countsubstring countSubstring�= �:"�: "  �9�8�9 0 thetext theText�8 0 thesubstring theSubstring�<    �7�6�5�7 0 thetext theText�6 0 thesubstring theSubstring�5 0 counter  ! �4�3�2�1�
�4 
ascr
�3 
txdl
�2 
citm
�1 .corecnte****       ****�; ���,FO��-j kE�O���,FO� �0��/�.#$�-�0 $0 getlistitemindex getListItemIndex�/ �,%�, %  �+�*�+ 0 thelist theList�* 0 theitem theItem�.  # �)�(�'�) 0 thelist theList�( 0 theitem theItem�' 0 i  $ �&�%�$
�& .corecnte****       ****
�% 
cobj
�$ 
ctxt�- * %k�j  kh ��/�&��&  �Y h[OY��Oj �#&�"�!'(� 
�# .aevtoappnull  �   � ****& k     c))  /��  �"  �!  ' �� 0 a_track  (  w� F� M������ [������ r u
� 
sele
� 
btns
� 
dflt
� 
disp� 
� .sysodlogaskr        TEXT
� 
pPlS
� ePlSkPSS� 0 sel  
� 
kocl
� 
cobj
� .corecnte****       ****� 0 processtrack processTrack� 0 cleanup cleanUp�  d� `*�,jv  ���kv�k�j� Y G*�,�  >�j O*�,E�O �[��l kh  )�k+ [OY��O)j+ Oa �a l Y hU ascr  ��ޭ