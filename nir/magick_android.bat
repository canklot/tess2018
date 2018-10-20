magick scrnsht.png -crop 900x260+100+320 cropped.png
magick convert cropped.png -negate -resize 150%% negativeres.png
magick convert negativeres.png -colorspace gray gray.png
magick convert gray.png -colorspace gray -threshold 25%% out.png

for 3 line
magick scrnsht.png -crop 800x60+82+700 choiceA.png
magick scrnsht.png -crop 800x60+82+915 choiceB.png
magick scrnsht.png -crop 800x60+82+1125 choiceC.png

for 2 lines
magick scrnsht.png -crop 800x60+82+630 choiceA.png
magick scrnsht.png -crop 800x60+82+840 choiceB.png
magick scrnsht.png -crop 800x60+82+1050 choiceC.png

for pc
magick scrnsht.png -crop 500x100+40+170 cropped.png 

IF %linecounter%==3 (magick scrnsht.png -crop 300x40+30+320 choiceA.png)
IF %linecounter%==3 (magick scrnsht.png -crop 300x40+30+410 choiceB.png)
IF %linecounter%==3 (magick scrnsht.png -crop 300x40+30+490 choiceC.png)
IF %linecounter%==2 (magick scrnsht.png -crop 300x40+30+290 choiceA.png)
IF %linecounter%==2 (magick scrnsht.png -crop 300x40+30+380 choiceB.png)
IF %linecounter%==2 (magick scrnsht.png -crop 300x40+30+465 choiceC.png)
