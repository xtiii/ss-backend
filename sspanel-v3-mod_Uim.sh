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
�fw1\sspanel-v3-mod_Uim.sh �Y}W�V��|��[�m����.tzJ���E�J���R�&kޚd���3Z]D��ZE\�*b��n[�.�If�/��>77�_����{�_��{^�mĶ9SԱʍ�r�!~�hL�#���y���~`"}��7s3�h�/\4�EQ<����2�7�!E�D;�0���Y��nAo$e� z�Mta)e �t�vqyP�=r�](�[ϯ�[��n<�.��M�]���x�?���)���q&��%G1t$��tj���֚[N3J��#.��H����pV�hc40Ў�֙��`(�JXw�e�
���PIŶ��A�6��:� V�C����a��=¤�Һ��L���~v�`�g�n�=�ѴI��MX|�m��";��E7��'�0C��8��E#N;zH��@`%!8����<�ѹ����6[�=��r����3��]/��埬�W�R�����Y����Ӈ-��q�^[/��C��{Ӌ������|�C_�8��Q���.�!j��ϰ����[���>*e���1��CY"B�-��4 ��q�<).�w��*M\cҦ,:xЁ<�`IpW�Ƽ�K�w����l�2��'��+���(��!�����-�T��̰L��8)�-��lkC�|kk<�ְ gtY��a�(�I�(	��H2T�b|z�ߢ����q�E����;�w8Ԫ�T����������0
r��#�CQxe"��(I�����'K�.xN�������yg�ʬ�kդwi���\e�Ӳ��{���X����d�b��Rv�07_Y�H�%��A���ΓL�N�w��X�Ε�~T���]�w/�0e�����+��3�=;������{�.K!Y�5��5C�����'������
��������l���lq�iac	�嫲E��l�� pr�Ϗ4��baʡ�XP��E�ҫ���¹UwnΝ���]�?�t�k�DEN�m殐P�0�3����P�Y4��l��������cL� I�/w4s�n����Ԓ�v�ߓ�i�B��Kx\w�b���DS��QÒ_
QK�fp���U�1d&�檛��.��?��W?.�4�'��.��W/��_�m?
|�V1��S�qING��½��҃�On��Lc`;���Cs5���W�zj���!�M�Xc��b��jFw$T1跏���c _X_(�/n����V���m`-Gt�6#8�����Ù�XKM����~��eo�������˺�������G��ڵ��Y���P.�(}�YB�м41��|�]^�Nw+�&�x)�*\�W���/�F�l��t�lEǶ(1���j��K0���XRU�ֿTLD�A��R�8	q�np~��$le����d��<H��僢߁n��2a�QE�2bK�b:�&B��U���O>z��n�4�Yɭ����o)�J��c�x;E�y��,g@LH ���
#A�i!'Ŵ�f��2�����E�S���qC䃥L����x�O9��SH�%��Я�6+��&,F������{��;K�VR�B�����e�����@!O�?�WQL�a��r\J�t�ta
R�ws"��A@ ��>��R&��D�Tq�)&RXX/�~P��sq�$&�ƺ;��l�X$�DV���D��I��;i�y�$��+!�� !+�l��$x�4���%j��H�`���]=��tt�)Dv�nB�����
����	d'B �o��'/]qx�8 �4Ix��XN͜/3�!���P��_�nO�ތQq��q���1�7ap����k��!�Ҕa�Ø�@/S�ب������6�SH�/�>�O[����G>-�����l\���-�:�Ss�;�AX�oS���H a�(d`;ߪ(��{� ��_���-ƙ�f%(>���@���;ʤ��.X�ޫ#H�����-|A�^��3ޖeԉX&P!�3�2lg�:��y��u���A;��3fi���.ڙ��;z�PGw7�=��IWw����X���C}�P�n���OM��`gO_ס�΃��ς	�iW�D1���u�ig�j2�i)#�����Æ��Ӛ�Tv�(�6�[z��v���Z>)���8ձ;�����N����U��w���d�ZJ@����1$��*��b�.O�4�uٰ2�%�I$�țXg��_~����mI�a�x�T8��m�6��5i������v�^%̢�&�8u��j�ܕ�CkD�KwI�v�&m���o'�i�;�5o�'�~�	����+��0���[�*Z�D��-��%��h��vZ�i�_Q�¨�wZ�^����q��èj�������NS�;�m̽�,9`Μ�@��|~c�+�c�f�����FU?w���8O/�+kIS��G�Z�������-.���9MjEY���,1	QZ�JH��_ϒ۾p�[�m�"g��5nw���o��~��eʇ�eL��d��{��b���0"Z�m��
��;C�\Ӊ#��݉��ZhB￿��ގ�#	���m���tv�	���O�GѾ�_Y\���^Ƚ$ �z�����(�&�r���3.�����1�|}ceu	�.�~b~���AuC�σl��x|��PS*��9
�K��sd\.7��q2b��E��}>�0��u�Y�^����	���B�����вn�f�*�!à��%���q+��ʴV���7�]�lp���U�Ƃ�G3�,\g}ہ��/�+L_t��E��g��Ө|e����λu��fN|�V����WMi����#����p����|`��s�;� {��f�l�V>�0���{4[  