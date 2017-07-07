#!/bin/ash

envsubst < ~/fetchmail.rc > ~/.fetchmailrc
envsubst < ~/msmtp.rc > ~/.msmtprc
chmod 0400 ~/.fetchmailrc
chmod 0400 ~/.msmtprc
fetchmail -v -N