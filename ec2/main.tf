# Create a Security Group
resource "aws_security_group" "allow_ssh_and_mysql" {
  name        = "${var.env}-allow_ssh_and_mysql"
  description = "Allow SSH and MySQL access"
  #vpc_id      = var.vpc_id  # Replace with your VPC ID if using a custom VPC

  # Allow SSH (Port 22)
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # ##Allow MySQL (Port 3306)
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # # Allow outbound traffic (default behavior)
  # egress {
  #   from_port   = 0
  #   to_port     = 0
  #   protocol    = "-1" # All traffic
  #   cidr_blocks = ["0.0.0.0/0"]
  # }
}

# Create EC2 Instance and associate the Security Group
resource "aws_instance" "my_ec2" {
  ami           = var.ami_id          # AMI ID for the Linux instance (e.g., Amazon Linux 2)
  instance_type = var.instance_type   # EC2 instance type (e.g., t2.micro)
  key_name      = var.key_name        # SSH key pair name for accessing the instance
  security_groups = [aws_security_group.allow_ssh_and_mysql.name] # Attach the security group

  tags = {
    Name = "${var.env}-MyEC2Instance"
  }
}
