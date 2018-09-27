cd..
SET /p linecounter=<linecounter.txt
cd nir
IF %linecounter%==3 (magick scrnsht.png -crop 300x40+30+320 choiceA.jpg)
IF %linecounter%==3 (magick scrnsht.png -crop 300x40+30+410 choiceB.jpg)
IF %linecounter%==3 (magick scrnsht.png -crop 300x40+30+490 choiceC.jpg)
IF %linecounter%==2 (magick scrnsht.png -crop 300x40+30+290 choiceA.jpg)
IF %linecounter%==2 (magick scrnsht.png -crop 300x40+30+380 choiceB.jpg)
IF %linecounter%==2 (magick scrnsht.png -crop 300x40+30+465 choiceC.jpg)

magick convert choiceA.jpg -negate -resize 150%% negativechoiceA.jpg
magick convert negativechoiceA.jpg -colorspace gray graychoiceA.jpg
magick convert graychoiceA.jpg -colorspace gray -threshold 25%% outchoiceA.jpg

magick convert choiceB.jpg -negate -resize 150%% negativechoiceB.jpg
magick convert negativechoiceB.jpg -colorspace gray graychoiceB.jpg
magick convert graychoiceB.jpg -colorspace gray -threshold 25%% outchoiceB.jpg

magick convert choiceC.jpg -negate -resize 150%% negativechoiceC.jpg
magick convert negativechoiceC.jpg -colorspace gray graychoiceC.jpg
magick convert graychoiceC.jpg -colorspace gray -threshold 25%% outchoiceC.jpg
cd..