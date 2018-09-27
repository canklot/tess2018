nircmd.exe savescreenshot scrnsht.png
magick scrnsht.png -crop 500x100+40+170 cropped.jpg
magick scrnsht.png -crop 300x40+30+320 choiceA.jpg
magick scrnsht.png -crop 300x40+30+410 choiceB.jpg
magick scrnsht.png -crop 300x40+30+490 choiceC.jpg