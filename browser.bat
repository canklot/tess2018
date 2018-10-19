pushd C:\Program Files (x86)\Google\Chrome\Application\
SET query=https://www.google.com.tr/search?q=
chrome.exe %query%%kelime%+%correctedChoiceA%
popd
pushd C:\Mozilla Firefox
firefox.exe %query%%kelime%+%correctedChoiceB%
popd