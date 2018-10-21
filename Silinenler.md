magick convert screenshot: scrnsht.png
adb shell screencap -p /sdcard/scrnsht.png

adb shell screencap -p /sdcard/scrnsht.png
adb pull /sdcard/scrnsht.png
magick scrnsht.png -crop 900x260+90+320 cropped.png
magick convert cropped.png -negate -resize 150%% negativeres.png
magick convert negativeres.png -colorspace gray gray.png
magick convert gray.png -colorspace gray -threshold 25%% out.png