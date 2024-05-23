# Define the provider
provider "aws" {
  region = "us-east-1"
}

# Create an S3 bucket
resource "aws_s3_bucket" "example" {
  bucket = "my-unique-bucket-name-12345" # Change this to a unique bucket name
  acl    = "private"
}

# Create a Security Group for the EC2 instance
resource "aws_security_group" "example" {
  name_prefix = "example-"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create an EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # Replace with your desired AMI ID
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.example.id]

  tags = {
    Name = "example-instance"
  }
}

# Output the public IP of the EC2 instance
output "instance_public_ip" {
  value = aws_instance.example.public_ip
}
