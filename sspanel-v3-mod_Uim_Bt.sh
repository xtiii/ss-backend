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
�fw1\sspanel-v3-mod_Uim_Bt.sh �Y{S�V�}�[��k"�6!la��v��d�M�nwvw�ٖ��QI\a!� ��4
%4h��/^&|�Ԓ���
{��dK�v 4dbK����}νn�4F�$>��41���� v}�S��􄬶"�ь����sA��r��@�}&d(l��T�{lD���%(��N1ĤN��Ш;��MȈ.�{T\]ԡecw�����~�ʲ^��l��w��������9�_��}���mh�����.��&��.-��x�d?� �Q{;b���(���3*��9�G��mHO���`��(/�FS|h��N(MK��:�Vy1_!�#��������0��aR��������!�_)�y�HKHFE��l�jX�G�>�a$��tXa���!"��)�yĈW���(v��?-�恎����l��3��{,�exD�wf�?o��[�.T�y�|�1���Wy^@��*x9��U��sz����=3d�<���?�c(�1Y�A����O&��d�<1�K��qs�����wh1	��@� J��Fcc��4lL=,ݜ�RJ���.�@��i���%4�F��gN6���,Ņ�0��f��{59zMcS�r�@��4M]T�W�)5������ȋpSS(��n6��b��v�\������rRV)K�a�#����iD�R�� ~'r;CM"Mh><o�	�5��(�UƂd��
�+�(ɺ�k��
R\VE뙺�a�1w{~w�\�,k�ӏ]���qk�2����*���l'ٱ2{ɵe�b��Rf����sAqO�?/��S�i��xq,ʝ@)*
�������*���}Q�,���\���Xf��Se�2��k��wv!}�W�9��h�V��<M�i���+�W׉f����[����j-�t�.��Bd����x��M���ƭǅ�;�|���d�b�̘9���ִ��.����N`7��m̭1f�ަqky/7�n���zA�A�9�Ņ�8�<uZ��R|9c�<#��7�wma!��)�xd,,ӓ�a)a7���ɢ��8KK��٧D���h���|������X��EP#NZ�퀿��5x�ˍAwA�^>�	:�?I����H?,[�bZ�*��.	G�6�Y3'��֌r#Бэ��ǃ\�Ӵ^Y�,U�,୰�fÀN.xBL}̧O�"�[��y��M����g��/V��� o�hdg�c'�=5�
|1u�OS�B�S� ��
�Yp��M�~>���ﳺ�c�#�8�=Lٔ>�%�AQ6��l��Xf��n��O�����ʃA�/l/�W�r߆���'Q{�u���uNOiT��>�FC���'=�a��3��w��e��q#;V|2RX7���l���Hȋ��B��tsҼ�f�-�Q�u4,&9R�S.\l����+O@�F&G$������E��je�x9B�1�[���d~g�o�AC,dM��ꡜX�T1j����	]L�3�3���HX��S�ׂ��*T.������L�{f�"�o���g�J�D�l�L�}舩��6�"�����ŝ������9�^�e�ܚ��ž{��t�0}��P�T/�����F���a��j�S����/������� �U��S�	��gEz&���QCe[�
-CVPb:���_�;OU7.��~���:�,6�%��P��;���E�����1����h'��K��Ӡ��AȜp0ca1������$�E��o]��KoC�"���p(�D!�bb��K��яOnzAS�\���Ѯ�0�T�2���}ڮ�g���9�YIQ�`�eVV�*�RV1AL�[� q{��V.�gԝ��KA�8�c�sl��a��u�ܱ`Q�x���;�r�������жw��^	1�!������Apk<���l��k@��{��"�\7O�>��'*2��W���*����2n�G���|����#33hܝ 7O�o���7�C�"u��I�>��_W�]q!�k�×R��"��l���'h]�ڭu��g� }��d8�ٞ������8589��ȴ�v`�'�t��~{���){��UR�$��涖��mZ��]��yt���	!g�Z�-�Lv�v����*��N%���I��J*udۗc���w� �I�$���jYH	e�Z��l����-�sc�	i�Ao���'�7���K�7M
x����*�����,��MC&C�i�����T�&CPʔ������%d�ʕ�U��}d.v��Tf�}b��2��U����[G�Y��o�m8d.���{��J'�5P(���Y�n*�Qp��_NM�	I����é���r�ō�u!h�P���H��c���R��	��1�ȫ����ZZ�Jr��M\#��^ef�|�DM�V#C�D���c!���*�Mի�m��<��#�1�����V���z���/\�)�x�?�4NLK�6e�7{7Yz���K���c���-,:�&��r���?d��Fr�Z�?wy"�;slN�p�=hVB�.�]�۽v��e�\D��UZ��Bv7�w�o6��(H�|I5�i>[��x>d~7j�w�ٜ��]s�d�7V�;�����~�z�C�;�j�ߝ��e�vn�  