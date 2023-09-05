# Create security group for windows
resource "aws_security_group" "cmt1-sg1" {
  name   = "cmt1-sg1"
  vpc_id = aws_vpc.cmt1.id

  # Ingress rules

  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = [element(var.myip,0)]
  }
    ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
      ingress {
    from_port   = 5985
    to_port     = 5985
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
        ingress {
    from_port   = 5986
    to_port     = 5986
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Egress rules
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # Allow all outbound traffic
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name  = "cmt1-security-group1"
    Email = var.email
    Env   = "Dev"
  }
}

# Create security group for linux
resource "aws_security_group" "cmt1-sg2" {
  name   = "cmt1-sg2"
  vpc_id = aws_vpc.cmt1.id

  # Ingress rules

  ingress {
    from_port   = 0
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [element(var.myip,0)]
  }
  # Egress rules
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # Allow all outbound traffic
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name  = "cmt1-security-group2"
    Email = var.email
    Env   = "Dev"
  }
}
