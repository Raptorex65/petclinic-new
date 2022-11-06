APP_NAME="Petclinic"
APP_STACK_NAME="$APP_NAME-local"
CFN_KEYPAIR="petclinic-ansible-test-dev.key"
AWS_REGION="us-east-1"
aws cloudformation create-stack --region ${AWS_REGION} --stack-name ${APP_STACK_NAME} --capabilities CAPABILITY_IAM --template-body file:///home/ec2-user/petclinic/infrastructure/dev-docker-swarm-infrastructure-cfn-template.yml --parameters ParameterKey=KeyPairName,ParameterValue=${CFN_KEYPAIR}