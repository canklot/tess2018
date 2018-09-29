cd tess
tesseract.exe %nirDir%\outchoiceA.png %mainDir%\choiceA
tesseract.exe %nirDir%\outchoiceB.png %mainDir%\choiceB
tesseract.exe %nirDir%\outchoiceC.png %mainDir%\choiceC
cd..
SET /p choiceA=<choiceA.txt
SET /p choiceB=<choiceB.txt
SET /p choiceC=<choiceC.txt
pushd C:\Program Files (x86)\Google\Chrome\Application\
SET query=https://www.google.com.tr/search?q=
chrome.exe %query%%kelime%+%choiceA%
chrome.exe %query%%kelime%+%choiceB%
chrome.exe %query%%kelime%+%choiceC%
popd