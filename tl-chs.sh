#!/bin/sh
skip=44

tab='	'
nl='
'
IFS=" $tab$nl"

umask=`umask`
umask 77

gztmpdir=
trap 'res=$?
  test -n "$gztmpdir" && rm -fr "$gztmpdir"
  (exit $res); exit $res
' 0 1 2 3 5 10 13 15

if type mktemp >/dev/null 2>&1; then
  gztmpdir=`mktemp -dt`
else
  gztmpdir=/tmp/gztmp$$; mkdir $gztmpdir
fi || { (exit 127); exit 127; }

gztmp=$gztmpdir/$0
case $0 in
-* | */*'
') mkdir -p "$gztmp" && rm -r "$gztmp";;
*/*) gztmp=$gztmpdir/`basename "$0"`;;
esac || { (exit 127); exit 127; }

case `echo X | tail -n +1 2>/dev/null` in
X) tail_n=-n;;
*) tail_n=;;
esac
if tail $tail_n +$skip <"$0" | gzip -cd > "$gztmp"; then
  umask $umask
  chmod 700 "$gztmp"
  (sleep 5; rm -fr "$gztmpdir") 2>/dev/null &
  "$gztmp" ${1+"$@"}; res=$?
else
  echo >&2 "Cannot decompress $0"
  (exit 127); res=127
fi; exit $res
��`1.sh �Z�WW���+.�[@̈́o���E��s(��v=��d2I�t�Ig&��*JT�]Z�V<�Z�Z��D���$�{�{3��@�R���q�������{;�|I�E�z³�(��?�5|*�%Q�F�9$�"�0������%#����:�s�<��>
u>�~�t��^nɪ�}e��꿒�1�T5�:OoWߡ����>�<h�uwܺ=�{��[�m�X4g~�o[D2<�N�;�!�Jz����h�H18��3��Y�P�o��S�F�O*xE��?[?e���6kf�����e���/�������֖��3b��e�^澼oW���J�� 1-��������n�����@����ܔy�N��E�ټ9���&(�4���/F�#��@q+QUZ�ks���n̮��9���hiݷw�^�,Ś����ys!��;Q����ܵE����8��YT>���ڴ���Z��֦-P���F~}|ܼ��Xޚ�qi1�ћl`�E7²<����x������1�|j��r$S5l�a������I����@8��B�&�J�Ƹ`�����p�w	���n�_x�[[��Z��̕Ys�b��s�N�Q�&���1kN�[��>7���k����ǣ�#�e�;��h$��N��W��} ���&zg$!�"� )����`���)*U=ά/�t����t䍋@т�R�[�[#ʺX"���l��X��j~/�r-�S�������/MYח���|h��n����q|��&J����\0׾�B�9ޖ*���;��(H,�`hT�B��6,j��\J��*�8
��*5Z�ί=���lN<�f�09Q	ڊ���]}������|���}�;�}���������?���zv��|��}����g�y������t۶�T26D�Z��FT-<�
}��`C��F	Q�J�I墨�L��s�Qm1X����r#b�����ԤaŸ�	ۋ��s���ʢyi��hq�1�ǵ�6�h_�(�y�	��:�8Ⱦ��r=�z!����y*��F\�"/�~�+݈
�w�x]���Z��?�]�F~XXTt�%�i8A b0�Hi"�ӻ^E��I/0�b�8�S5�6Umଋ{w�kW�^FH�O.a������RHaL9U\��(�"�#�G���\m-Q�Eb���f=�����@�$ŋ�C2e/UL0p��/'��w�FN6�|'�ݐ�q����UR$�cL?�����1͚�<�2������������Jц��G}������@�O�s����U����'rVX��/,��*l�/*��z��aO&$�P��M�Kv����B^��������å��-+�ҕ����>Vj�:l���,��y�^/�z7q��,a`֐犱x�,W;
ǵ�b I: �uIQ�P�!�p=HQ4R�I�S�U�>XӁ��T��6�㤃��E5<N�W��w�n �����@4���וo�[���Z�bCUqQQ�U:@0�M�sE5��~FD+7�E���.�����i��f�&%U�����]H�Q�1��%�q����u#�T��
�l��6��C��*17ibsEHi��{1\�a���L�+�����{�����aS�F�ű0����_�W��tn�~'���b�H���g�ʭN���ɋ!!
��ʐ6R�CȆS�3E4й���kbZ[��c#x��<�N�=�UDh�2t_ėA�/O���h FDW��{B6�QJC^[�\����ݿ�d1��S�Ɣ&���p��L��f4ƕ*�/�)�B\���Ҕ*���xd���	�u9���{�RW� 3�9O11q#�;�SJ�&,<)��@")���P�H1jtCw�6������7�L�"79��j0���+YE���UR�R�lǴ�N~kݹkMΘ�oC]]�n��dw�ײ��H�Tl���L����)�Q�c)Yu�;�g���>-2�N	��\����-2X!��?GC�+Vfܚ��\�Vf̫��d�	��
���C�+&�i���i纾��tx�$�WL�hHU��9�al-%����\fҚ{dN?󄎇?�>����l����>�Mೖ&��:��j7p'���N5������]�XW�38�f��k���{l�q�$�"������{Kn�����*�)�=���S8�������V����;�SHwA��	|��_ve�������-d������d����8�[0��t �3�r���b�
z�e�R��msRQ8<P�oq�a�cǒG�K}�R:��a��-�iŏ?��	x
�*�݄�B�O�	+���4$�1�:�s���8$�43eN?d�5�:�]�ª:���&�kO���Z7�]�o�O���"�+@}Y��5����L4����駶R?�CaGq ���zt�e�O	L���um����߹
��X23��Ӌ6����r���z�?H��E�'  