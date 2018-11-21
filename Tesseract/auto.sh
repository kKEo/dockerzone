
inotifywait -m /home/ocr/original -e create | while read path action file; do su -c "bash /usr/bin/convert.sh $path $file" ocr; done
