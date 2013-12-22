cat URL/PF* > X
h1-US X Y
grep "netacgi" Y > Z
sort -u Z > Y
egrep -v "Page|IMG|#|VALUE|FORM|ebiz|Query" Y > Z
sed "s/amp;//g;" Z > URL
rm X Y Z
