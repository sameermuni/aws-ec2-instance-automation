# EC2 Automation Script

This script automates the creation of EC2 instances using AWS CLI.

## Prerequisites

Before running the script, ensure you have the following:

- **AWS Account**: An active AWS account with the necessary permissions to create EC2 instances.
- **AWS CLI**: Installed and configured with valid credentials.
  - You can install the AWS CLI by following the instructions here: [AWS CLI Installation](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html).
- **Key Pair**: An existing SSH key pair to connect to the EC2 instance.
  - You can create a key pair in the [EC2 Dashboard](https://console.aws.amazon.com/ec2/v2/home#KeyPairs).
- **Security Group**: An existing security group with appropriate inbound rules for SSH (port 22).
  - If you don't have one, you can create a security group in the [EC2 Dashboard](https://console.aws.amazon.com/ec2/v2/home#SecurityGroups).

## How to Use

Follow these steps to automate the EC2 instance creation:

### 1. Clone the Repository

Start by cloning this repository to your local machine:

```bash
git clone https://github.com/your-username/aws-ec2-instance-automation.git
cd aws-ec2-instance-automation

