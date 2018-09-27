SET chromeDir=awfwaf
cd nir
nircmd.exe savescreenshot scrnsht.png
magick scrnsht.png -crop 500x100+40+170 cropped.jpg
magick convert cropped.jpg -negate -resize 150%% negativeres.jpg
magick convert negativeres.jpg -colorspace gray gray.jpg
magick convert gray.jpg -colorspace gray -threshold 25%% out.png
SET nirDir=%cd%
echo %nirDir%
cd..
SET mainDir=%cd%
cd tess
tesseract.exe %nirDir%\out.png %mainDir%\out
cd..
pyscript.py
SET /p kelime=<srch.txt
SET /p linecounter=<linecounter.txt
cd nir
IF %linecounter%==3 (magick scrnsht.png -crop 300x40+30+320 choiceA.jpg)
cd..
pushd C:\Program Files (x86)\Google\Chrome\Application\
chrome.exe https://www.google.com.tr/search?q=%kelime%
popd
