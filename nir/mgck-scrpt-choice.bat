cd..
SET /p linecounter=<linecounter.txt
cd nir
IF %linecounter%==3 (magick scrnsht.png -crop 300x40+30+320 choiceA.png)
IF %linecounter%==3 (magick scrnsht.png -crop 300x40+30+410 choiceB.png)
IF %linecounter%==3 (magick scrnsht.png -crop 300x40+30+490 choiceC.png)
IF %linecounter%==2 (magick scrnsht.png -crop 300x40+30+290 choiceA.png)
IF %linecounter%==2 (magick scrnsht.png -crop 300x40+30+380 choiceB.png)
IF %linecounter%==2 (magick scrnsht.png -crop 300x40+30+465 choiceC.png)

magick convert choiceA.png -negate -resize 150%% negativechoiceA.png
magick convert negativechoiceA.png -colorspace gray graychoiceA.png
magick convert graychoiceA.png -colorspace gray -threshold 25%% outchoiceA.png

magick convert choiceB.png -negate -resize 150%% negativechoiceB.png
magick convert negativechoiceB.png -colorspace gray graychoiceB.png
magick convert graychoiceB.png -colorspace gray -threshold 25%% outchoiceB.png

magick convert choiceC.png -negate -resize 150%% negativechoiceC.png
magick convert negativechoiceC.png -colorspace gray graychoiceC.png
magick convert graychoiceC.png -colorspace gray -threshold 25%% outchoiceC.png
cd..
oto2.bat