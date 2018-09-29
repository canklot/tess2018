cd tess
tesseract.exe %nirDir%\outchoiceA.png %mainDir%\choiceA
tesseract.exe %nirDir%\outchoiceB.png %mainDir%\choiceB
tesseract.exe %nirDir%\outchoiceC.png %mainDir%\choiceC
cd..
SET /p choiceA=<choiceA.txt
SET /p choiceB=<choiceB.txt
SET /p choiceC=<choiceC.txt
pushd C:\Program Files (x86)\Google\Chrome\Application\
chrome.exe https://www.google.com.tr/search?q=%kelime%+%choiceA%
chrome.exe https://www.google.com.tr/search?q=%kelime%+%choiceB%
chrome.exe https://www.google.com.tr/search?q=%kelime%+%choiceC%
popd