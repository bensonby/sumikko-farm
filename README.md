# Piano Score with Video for Sumikkogurashi Farm - Main Theme

## Merging video with audio

```
# Time offset is obtained by matching the audio wave forms
ffmpeg -ss 10:17.953 -t 1:41.8 -i video-raw.mp4 -ss 0:00 -t 1:41.8 -i d-1019.wav -c:v copy -c:a aac -map 0:v:0 -map 1:a:0 output.mp4
```

## Generating png from score-mini.pdf

Warning: https://stackoverflow.com/questions/52998331/imagemagick-security-policy-pdf-blocking-conversion

```
mkdir images
convert -density 100 score-mini.pdf images/output.png
# generated images/output-0.png, output-1.png, etc.
```

## Adding score image to video
```
ffmpeg -i output.mp4 \
-f lavfi -i "color=white@0.93:s=787x197,format=rgba" \
-i images/output-0.png \
-i images/output-1.png \
-i images/output-2.png \
-i images/output-3.png \
-i images/output-4.png \
-i images/output-5.png \
-i images/output-6.png \
-i images/output-7.png \
-i images/output-8.png \
-i images/output-9.png \
-i images/output-10.png \
-filter_complex \
"[0:v][1:v] overlay=493:0[x]; \
[x][2:v] overlay=493:0:enable='between(t,0,11.9)'[x]; \
[x][3:v] overlay=493:0:enable='between(t,11.9,20.2)'[x]; \
[x][4:v] overlay=493:0:enable='between(t,20.2,28.3)'[x]; \
[x][5:v] overlay=493:0:enable='between(t,28.3,36.7)'[x]; \
[x][6:v] overlay=493:0:enable='between(t,36.7,45.3)'[x]; \
[x][7:v] overlay=493:0:enable='between(t,45.3,53.2)'[x]; \
[x][8:v] overlay=493:0:enable='between(t,53.2,61.7)'[x]; \
[x][9:v] overlay=493:0:enable='between(t,61.7,70.2)'[x]; \
[x][10:v] overlay=493:0:enable='between(t,70.2,78.4)'[x]; \
[x][11:v] overlay=493:0:enable='between(t,78.4,86.8)'[x]; \
[x][12:v] overlay=493:0:enable='between(t,86.8,94.7)'[x]; \
[x][2:v] overlay=493:0:enable='gt(t,94.7)'[x]; \
[x]fade=t=in:st=0:d=1, fade=t=out:st=97.8:d=4[x];
[0:a] afade=t=out:st=97.8:d=4[xa]
" -pix_fmt yuv420p \
-map "[x]" -map "[xa]" \
-t 101.8 output2.mp4
```
