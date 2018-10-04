cd nir
magick convert screenshot: scrnsht.png
magick scrnsht.png -crop 500x100+40+170 cropped.png
magick convert cropped.png -negate -resize 150%% negativeres.png
magick convert negativeres.png -colorspace gray gray.png
magick convert gray.png -colorspace gray -threshold 25%% out.png
SET nirDir=%cd%
echo %nirDir%
cd..
SET mainDir=%cd%
cd tess
tesseract.exe %nirDir%\out.png %mainDir%\out
cd..
pyscript.py
SET /p kelime=<srch.txt
cd nir
mgck-scrpt-choice.bat
cd..

