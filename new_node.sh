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
�fw1\new_node.sh �X�SI�9�W�M���IBn��J z��p�w�V�L:d4���� R�_�+l� �ȹ ��`�"��1�L������df�A񬫺���L�~����~����J3��9#�hmȚ�m��3�����|S8��pa�i�����L�w��$���f���bպ8S�v�x�9{���Y��\�ʍ��7v6&͵��ʔu�j��cs�������E�ᶹ=c�}�\zb^�-L��2gm������<E� E����Ɗ���	��2�A����u�����Qz|ќ�_�2��Ԥ`�^t��	���ስ0n��-W|aQ�S�p���i!���xN�t�	�Dx5ς��":���1G5��v(�F��,bN�de!��p&��VH�,Ke:�:��M��V���G�P����Y�ZV)%��!)2�䔢e�o��;غq�0��nɚZ?]7N
,�{�7iMϚ��ɘ�)�
��;s�u��	�J�D��������{��al�%���3I��ksZq:J����B�J��%���� �Σ:IE�O���B5e`�yI���g�H�<�h��"J0��?G&�Ć��.e�IT�hkXE�Cl�`����x��ha�o��1�)p�$9-����b���
����/1�iq�C2��7�͔7��o��}���y����es�����!���$�)0���⹸���mh$�B<�B�CN���p:e��Hc�	R+b�Pt�	��B�RII�s�u�{��'!6�� ��8���%r����L���>^"ps�z���GUS���tR��͏#}��G�\g�IIL !gr��ň˞aA�AWVwW�L a��W5I6P��B=Dl�Vݸ�U@�X'��yPG����o9X5��ƨ��_ \�p�g��C8�/��[�;��>T
p�k�Ѥ���:�̙���e�T`k�������{_`-�3lr�������g��>2V˓�����yk�<�#�h��G�v& �
�Oz��$놐���Ͱ�?��".���Tg��xg5��%CR�0Vr2<D��I5�D���S6� Y��T�*�Q8���
g�"NĚs�a�RC' g!�g���$�\��!wrVR�H\����3�Ec)��<	1��,�C�d�i��d�s�g��og��NEeQ�C�!��$�+<�ᓄ#nsā�&2�L�*a`�����PYa5=����ȩ��(���;/�L�,��Qd01��y�8����Q�a=�#�QF����	���k��#0P��iH���$���yc�U�������pFgu(W���H��wVAȺ��Ts��uk��1�SR�D�s*�9s�z9mݽ������3�9�s���K&�C���W_'�P��$������9����HWRF5��!V%#;���-�Un�Am�� �	��u��ym�|�f���ܠ�.���t��>(Oq�n��;�֬;�aY5,��*b�����yi�	꫹�m�5}���a��u��F��rtt�OR2g�.�������@�[�T����/���}=�S'���+�;��`$UJ��˸��ԁ�
��ˍm.�@�؉ZpP�ʓ�����b����қϲ��hJ�{/)���źb�{��]���3�vCҹ�nW���ݱxO7���yy��bw3����<�D'�!rH�N�	x��Q7��8�ِ�qI-�/�BWHDC�N���z?Ja�����퀰z����ӂr���`�`�E��,�����o����l�9|���]�۴�y0�9�o7ا�n����7��Re�=C�tY��>�B�uN� ����*D�N0�O����B�Ǻ�fnޮ*W���K�r���U���Q8H�WZ� ���WR�윶k������m��������@������3��P���}@���3��h4������܏dӧ_�)	h�T��~<Y�\|8U��p��~mt��dwω���#��b$u��n�j ��+������ 2����M-ިR�<J����NWIw'�p����NOEwg����=��λ
� T���Of=dT��P��B���B{k!��2��B({i�T����JH�ZZ`֧F�hz��z�5����x/#�/����d!�ʓW��?;�ku	*���y��ϕ���~.�\��b?MYE�v�RU �$��~F$��:g�4ܿ#pI��#?�pM4ٔd�% r��&���寸�Vm��w���uAd���{O��U��o%m���ũ'�?��b��A���p���(�	��`mD��!)��W�'X��1�-�����F=��Dߩ�L\�,�ᒪ�������9�7.t��+�7P[4��E�O�r�0��!zl�u>!�젹=iήC�U�b
��:��i�i9>PМ�e�<+��--���R{��]�����ԣCνQy��� �W�]�^C�5�BN�sU^TK�ה3*�0NU���b���&���O�Qq�3��L�<��zO��=F�7����5"����ax�䵤��� _�~�-�y>Y\&��+p
v�o@����.�MNQ�M�r��q��Gp4���G37�+ӕ�����|WPư  