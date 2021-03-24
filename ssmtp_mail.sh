#!/bin/bash

TO_ADDRESS="example@gmail.com"
FROM_ADDRESS="example19@gmail.com"
SUBJECT="Mail Server Hosting Demo"
BODY="This is a linux mail system. Linux is one of the email operating systems which can be used to send and receive emails."

echo ${BODY}| sudo ssmtp ${TO_ADDRESS}
