cd tess
tesseract.exe %nirDir%\outchoiceA.png %mainDir%\choiceA
tesseract.exe %nirDir%\outchoiceB.png %mainDir%\choiceB
tesseract.exe %nirDir%\outchoiceC.png %mainDir%\choiceC
cd..
pushd C:\Program Files (x86)\Google\Chrome\Application\
chrome.exe https://www.google.com.tr/search?q=%kelime%
popd