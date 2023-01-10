# aws-vmcreate

## Build docker image
Pre-requisite: Need to login to any image registry

```
docker build -t  quay.io/talat_shaheen0/aws-vmcreate:latest .
```

## Run docker image
Pre-requisite: Need to export the AWS parms

```
docker run -e AWS_DEFAULT_REGION=us-east-1 -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY -e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID -c ec2_command="create" -n ec2_tag_key="POC" -v ec2_tag_value="GolangOperator"-it quay.io/talat_shaheen0/aws-vmcreate:latest

docker run -e AWS_DEFAULT_REGION=us-east-1 -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY -e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID -c ec2_command="delete" -n ec2_tag_key="POC" -v ec2_tag_value="GolangOperator"-it quay.io/talat_shaheen0/aws-vmcreate:latest
```
