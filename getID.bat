2>NUL openssl rsa -in "../rename pem/rename.pem" -pubout -outform DER -out pub.tmp
2>NUL openssl dgst -sha256 -out checksum.tmp pub.tmp
SET /p EXTID=<checksum.tmp
SET EXTID=%EXTID:* =%
SET EXTID=%EXTID:~0,32%
SET EXTID=%EXTID:f=p%
SET EXTID=%EXTID:e=o%
SET EXTID=%EXTID:d=n%
SET EXTID=%EXTID:c=m%
SET EXTID=%EXTID:b=l%
SET EXTID=%EXTID:a=k%
SET EXTID=%EXTID:9=j%
SET EXTID=%EXTID:8=i%
SET EXTID=%EXTID:7=h%
SET EXTID=%EXTID:6=g%
SET EXTID=%EXTID:5=f%
SET EXTID=%EXTID:4=e%
SET EXTID=%EXTID:3=d%
SET EXTID=%EXTID:2=c%
SET EXTID=%EXTID:1=b%
SET EXTID=%EXTID:0=a%
echo %EXTID%
del checksum.tmp pub.tmp
@echo on
