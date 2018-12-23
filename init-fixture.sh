#!/bin/bash

CURRENT_DIRECTORY=`dirname $0`
FIXTURES_DIRECTORY=$CURRENT_DIRECTORY/fixtures
BAZAR_DIRECTORY=$FIXTURES_DIRECTORY/bazar
CLEAN_DIRECTORY=$FIXTURES_DIRECTORY/bazar_clean

rm -Rf $FIXTURES_DIRECTORY

mkdir -p $CLEAN_DIRECTORY/images $CLEAN_DIRECTORY/html $CLEAN_DIRECTORY/videos  $BAZAR_DIRECTORY/videos $BAZAR_DIRECTORY/12

wget https://filmpipeline.com/wp-content/uploads/sites/6/2017/08/ShortScriptContestIcon.png -q -O $BAZAR_DIRECTORY/images/picture.jpg
wget https://twitter.com/ \
     https://media.melty.fr/article-3817747-thumb-f8/the-walking-dead-saison-9-episode-7-ce-soir.jpg \
      -q -P $BAZAR_DIRECTORY

echo "Hello World, my script is ok, i'm really happy !"			 > $BAZAR_DIRECTORY/success.txt
echo "Continue the end is not far away." 				 >> $BAZAR_DIRECTORY/success.txt

touch $BAZAR_DIRECTORY/videos/video.mp4

du -a $FIXTURES_DIRECTORY
