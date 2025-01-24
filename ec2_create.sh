#!/bin/bash

# Set variables
AMI_ID="ami-0c55b159cbfafe1f0"  # Example AMI ID (replace with your own)
INSTANCE_TYPE="t2.micro"         # Instance type
KEY_PAIR="my-key-pair"          # Your SSH key pair
SECURITY_GROUP="my-security-group"  # Security group name

# Create EC2 instance
aws ec2 run-instances \
  --image-id $AMI_ID \
  --instance-type $INSTANCE_TYPE \
  --key-name $KEY_PAIR \
  --security-groups $SECURITY_GROUP \
  --count 1 \
  --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=MyEC2Instance}]'

echo "EC2 Instance Created!"

