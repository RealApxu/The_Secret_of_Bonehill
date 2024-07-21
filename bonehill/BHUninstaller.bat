@ECHO off

attrib -r data\BH-TIS1.bif
del data\BH-TIS1.bif
attrib -r data\BH-TIS2.bif
del data\BH-TIS2.bif
attrib -r data\BH-REST.bif
del data\BH-REST.bif

del chitin.key
copy BoneHillv275\chitin.bh chitin.key
del BoneHillv275\chitin.bh

call BoneHillv275\deldir override
md override
xcopy /y /s /q BoneHillv275\over.bak override
call BoneHillv275\deldir BoneHillv275\over.bak


