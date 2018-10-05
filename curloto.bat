SET userAgentOperaMini="Opera/9.80 (J2ME/MIDP; Opera Mini/4.2/28.3590; U; en) Presto/2.8.119 Version/11.10"
SET userAgentChrome="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36"
SEt userAgentGooglebot="Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)"
SET kelime=2007+dnya+kupasi+hangi+ulkede+duzenlendi
SET choiceA=japonya
SET query=https://www.google.com.tr/search?q=
SEt not=yorum yapmayi bilmiyorum test amacli degişkenler ile oynadim düzelt
curl.exe -A %userAgentGooglebot% -o resultA.html "%query%%kelime%+%choiceA%"
