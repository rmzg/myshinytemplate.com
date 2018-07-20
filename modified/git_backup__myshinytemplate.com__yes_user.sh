#!/bin/sh
DATE=`date +%Y%m%d`
DIR=/home/NEED_USERNAME/public_html/myshinytemplate.com-latest

echo
echo
echo "WARNING: INCLUDING 'user' TABLE WITH HASHED PASSWORDS IN BACKUP FILE!!!"
echo "WARNING: INCLUDING 'user' TABLE WITH HASHED PASSWORDS IN BACKUP FILE!!!"
echo "WARNING: INCLUDING 'user' TABLE WITH HASHED PASSWORDS IN BACKUP FILE!!!"
sleep 3
/home/NEED_USERNAME/bin/mysqldump__myshinytemplate.com__yes_user.sh
sleep 3

cd $DIR
rm shinycms.conf.redacted
cp shinycms.conf shinycms.conf.redacted
sleep 3
echo
echo
echo "WARNING: DELETE PASSWORD(S) FROM CONF FILE!!!"
echo "WARNING: DELETE PASSWORD(S) FROM CONF FILE!!!"
echo "WARNING: DELETE PASSWORD(S) FROM CONF FILE!!!"
sleep 3
vi shinycms.conf.redacted

cd $DIR
git add -A
git commit -a
sleep 3

git push origin master
