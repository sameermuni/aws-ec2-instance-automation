#!/bin/bash

# Set default region and key name
REGION="us-east-1"
KEY_NAME="my-key-pair"  # Change this to your own key pair name
INSTANCE_TYPE="t2.micro"  # Change this to your desired EC2 instance type
AMI_ID="ami-0c55b159cbfafe1f0"  # Change this to the AMI ID you want to use (the default is an Ubuntu image)

# Check if AWS CLI is installed
if ! command -v aws &> /dev/null
then
    echo "AWS CLI could not be found. Please install AWS CLI first."
    exit 1
fi

# Check if AWS credentials are configured
aws sts get-caller-identity &> /dev/null
if [ $? -ne 0 ]; then
    echo "AWS credentials not configured. Please run 'aws configure' first."
    exit 1
fi

# Launch an EC2 instance
echo "Launching EC2 instance in region ${REGION}..."

INSTANCE_ID=$(aws ec2 run-instances \
    --image-id $AMI_ID \
    --count 1 \
    --instance-type $INSTANCE_TYPE \
    --key-name $KEY_NAME \
    --region $REGION \
    --query 'Instances[0].InstanceId' \
    --output text)

if [ "$INSTANCE_ID" != "None" ]; then
    echo "EC2 Instance created successfully with Instance ID: $INSTANCE_ID"
  

