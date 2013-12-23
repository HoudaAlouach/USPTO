cat Brevets/nph* > X
r1-US X Y
egrep -v "mso|xml|<|>|tyle|font|lang|span|Gothic|panose|\?\?|back|element|SimSun|0pt|column" Y > Z
r2-US Z X
r3-US X US.not
rm X Y Z
