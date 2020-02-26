#! /bin/bash

# stack-name, awsregion,cidr-block,subnet-cidr-block,vpc-name, aws profile

aws cloudformation create-stack --stack-name $1 --template-body file://./application.yml \
 --parameters ParameterKey=awsRegion,ParameterValue=$2 ParameterKey=cidrBlock,ParameterValue=$3 ParameterKey=subnetCidrBlock,ParameterValue=$4 ParameterKey=vpcName,ParameterValue=$5 \
 --profile $6

 aws cloudformation wait stack-create-complete --stack-name $1

 echo "stack created" 