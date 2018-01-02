
inotifywait -m /home/ocr/original -e create | while read path action file; do su -c "sh /usr/bin/convert.sh $path $file" ocr; done
