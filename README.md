# aws-vmcreate
Build docker image
//docker build -t  quay.io/talat_shaheen0/aws-vmcreate:latest .

Run docker image.
Note: Need to export the AWS parms before you run it.

//docker run -e AWS_DEFAULT_REGION=us-east-1 -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY -e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID -c ec2_command="create" -n ec2_tag_key="POC" -v ec2_tag_value="GolangOperator"-it quay.io/talat_shaheen0/aws-vmcreate:latest

//docker run -e AWS_DEFAULT_REGION=us-east-1 -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY -e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID -c ec2_command="delete" -n ec2_tag_key="POC" -v ec2_tag_value="GolangOperator"-it quay.io/talat_shaheen0/aws-vmcreate:latest
