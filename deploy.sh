#!/bin/bash

# building to deploy the application for EB.
go build -o bin/application application.go

# validating have been installed eb command in this machine.
eb --version
if [ $? -ne 0 ]; then
    echo "Please install eb command before running this script.(https://docs.aws.amazon.com/ja_jp/elasticbeanstalk/latest/dg/eb-cli3-install.html)"
fi

# EB status check for the next command.
eb status saisoku
if [ $? -ne 0 ]; then
    # create new one
    eb init goserver
    eb create saisoku
    eb open
else
    # deploy new app
    eb deploy saisoku
    eb open
fi