SEt userAgentGooglebot="Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)"
SET query=https://www.google.com.tr/search?q=
curl.exe -A %userAgentGooglebot% -o resultA.html "%query%%kelime%+%correctedChoiceA%" --ipv4 | curl.exe -A %userAgentGooglebot% -o resultB.html "%query%%kelime%+%correctedChoiceB%" --ipv4 | curl.exe -A %userAgentGooglebot% -o resultC.html "%query%%kelime%+%correctedChoiceC%" --ipv4
stringSearch.py
