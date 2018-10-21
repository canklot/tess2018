
magick scrnsht.png -crop 900x260+90+320 cropped.png
magick convert cropped.png -resize 150%% negativeres.png
magick convert negativeres.png -colorspace gray gray.png
magick convert gray.png -colorspace gray -threshold 75%% -negate out.png