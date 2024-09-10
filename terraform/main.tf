provider "aws" {
  region = "eu-west-2"  # Replace with your desired region
}

# Define the key pair
# resource "aws_key_pair" "ec2_key" {
#   key_name   = "my-aws-keypair"  # Replace with your desired key pair name
#   public_key = file("~/.ssh/id_rsa.pub")  # Replace with the path to your public key
# }

# Define a security group that allows SSH access
resource "aws_security_group" "ec2_security_group" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
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
resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-01ec84b284795cbc7"  # Ubuntu 20.04 LTS AMI for eu-west-2
  instance_type = "t2.micro"               # Free-tier instance type

  # Attach key pair and security group
  key_name      = "saidevops"
  security_groups = [aws_security_group.ec2_security_group.name]

  tags = {
    Name = "Terraform-EC2"
  }

  # Get the public IP of the instance
  associate_public_ip_address = true
}

# Output the public IP
output "instance_public_ip" {
  value = aws_instance.my_ec2_instance.public_ip
}
