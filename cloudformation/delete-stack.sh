#! /bin/bash

aws cloudformation delete-stack --stack-name $1 --profile $2
#wait for delete confirmation
aws cloudformation wait stack-delete-complete --stack-name $1

echo "stack deleted"