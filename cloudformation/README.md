# Creating a stack using application.yml

## Create Stack (create-stack.sh)
<code>aws cloudformation create-stack --stack-name testApplication --template-body file://./application.yml --profile dev --capabilities CAPABILITY_NAMED_IAM </code> <br>

this will use default values for variables in the YML file. they can be overridden by passing in variables with  <code>--parameters variable=variableValue<code> <br>

this will create a stack with name <b> testApplication</b> on <b>dev</b> profile
<<<<<<< Updated upstream
=======

To import certificate through aws cli use :
<code>
aws acm import-certificate --certificate file://Certificate.pem
                                 --certificate-chain file://CertificateChain.pem
                                 --private-key file://PrivateKey.pem
</code>
>>>>>>> Stashed changes
