cd C:\Users\ali\Desktop\tesseract-script-master\nir
nircmd.exe savescreenshot "C:\Users\ali\Desktop\tesseract-script-master\scrnsht.png"
cd C:\Users\ali\Desktop\tesseract-script-master\
magick scrnsht.png -crop 330x70+34+126 cropped.jpg
magick convert cropped.jpg -negate -resize 150%% negativeres.jpg
magick convert negativeres.jpg -colorspace gray gray.jpg
magick convert gray.jpg -colorspace gray -threshold 25%% out.png
cd C:\Users\ali\Desktop\tesseract-script-master\tess
tesseract.exe C:\Users\ali\Desktop\tesseract-script-master\out.png C:\Users\ali\Desktop\tesseract-script-master\out
cd C:\Users\ali\Desktop\tesseract-script-master
pyscript.py
SET /p kelime=<srch.txt
cd C:\Program Files (x86)\Google\Chrome\Application\
chrome.exe https://www.google.com.tr/search?q=%kelime%
cd C:\Users\ali\Desktop\tesseract-script-master
