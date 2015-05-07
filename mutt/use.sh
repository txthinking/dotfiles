#!/bin/bash

rm -rf ~/.getmail
cp -r .getmail ~
echo "You must change config in ~/.getmail/getmailrc"

cp .muttrc ~/.muttrc
echo "You must change config 'from' in ~/.muttrc"

cp .procmailrc ~/.procmailrc
echo "You must change config 'from to' in ~/.procmailrc"

rm -rf ~/.procmail
mkdir ~/.procmail

cp .msmtprc ~/.msmtprc
chmod 600 ~/.msmtprc
echo "You must change config in ~/.msmtprc"

rm -rf ~/.msmtp
mkdir ~/.msmtp

rm -rf ~/.mail
mkdir ~/.mail
mkdir ~/.mail/inbox
mkdir ~/.mail/inbox/{cur,new,tmp}
mkdir ~/.mail/send
mkdir ~/.mail/send/{cur,new,tmp}
mkdir ~/.mail/drafts
mkdir ~/.mail/drafts/{cur,new,tmp}

cp .muttrce ~/.muttrce

