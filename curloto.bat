cd curl
cd bin
SET curlDir=%cd%
SET userAgent='Mozilla/5.0'
SET kelime=asd
SET choiceA=zxc
SET query=https://www.google.com.tr/search?q=
SEt not=yorum yapmayi bilmiyorum test amacli degişkenler ile oynadim düzelt
curl.exe -A %userAgent% -o resultA.html "%query%%kelime%+%choiceA%"
cd..
cd..
