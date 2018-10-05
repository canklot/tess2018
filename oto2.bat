cd tess
tesseract.exe %nirDir%\outchoiceA.png %mainDir%\choiceA
tesseract.exe %nirDir%\outchoiceB.png %mainDir%\choiceB
tesseract.exe %nirDir%\outchoiceC.png %mainDir%\choiceC
cd..

choiceCorrector.py choiceA.txt
choiceCorrector.py choiceB.txt
choiceCorrector.py choiceC.txt

SET /p correctedChoiceA=<correctedChoiceA.txt
SET /p correctedChoiceB=<correctedChoiceB.txt
SET /p correctedChoiceC=<correctedChoiceC.txt

curloto.bat

goto browsersEnd
pushd C:\Program Files (x86)\Google\Chrome\Application\
SET query=https://www.google.com.tr/search?q=
chrome.exe %query%%kelime%+%correctedChoiceA%
popd
pushd C:\Mozilla Firefox
firefox.exe %query%%kelime%+%correctedChoiceB%
popd
:BrowsersEnd