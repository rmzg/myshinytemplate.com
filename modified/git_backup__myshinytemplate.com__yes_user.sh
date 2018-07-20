#!/bin/sh
DATE=`date +%Y%m%d`
DIR=/home/NEED_USERNAME/public_html/myshinytemplate.com-latest

echo
echo
echo "WARNING: INCLUDING 'user' TABLE WITH HASHED PASSWORDS IN BACKUP FILE!!!"
echo "WARNING: INCLUDING 'user' TABLE WITH HASHED PASSWORDS IN BACKUP FILE!!!"
echo "WARNING: INCLUDING 'user' TABLE WITH HASHED PASSWORDS IN BACKUP FILE!!!"
sleep 2
/home/NEED_USERNAME/bin/mysqldump__myshinytemplate.com__yes_user.sh

cd $DIR
rm shinycms.conf.redacted
cp shinycms.conf shinycms.conf.redacted
echo
echo
echo "DELETE PASSWORD(S) FROM CONF FILE!!!"
echo "DELETE PASSWORD(S) FROM CONF FILE!!!"
echo "DELETE PASSWORD(S) FROM CONF FILE!!!"
sleep 2
vi shinycms.conf.redacted

cd $DIR
git add -A
git commit -a
git push origin master
