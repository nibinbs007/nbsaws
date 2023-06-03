# Create security group for windows
resource "aws_security_group" "cmt1-sg1" {
  name        = "cmt1-sg1"
  vpc_id = aws_vpc.cmt1.id

  # Ingress rules

  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["202.166.43.187/32"]
  }
  # Egress rules
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  # Allow all outbound traffic
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name  = "cmt1-security-group"
    Email = "nibin.bahulayansheena@ncs.com.sg"
    Env   = "Dev"
  }
}

# Create security group for linux
resource "aws_security_group" "cmt1-sg2" {
  name        = "cmt1-sg2"
  vpc_id = aws_vpc.cmt1.id

  # Ingress rules

  ingress {
    from_port   = 0
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["202.166.43.187/32"]
  }
  # Egress rules
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  # Allow all outbound traffic
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name  = "cmt1-security-group"
    Email = "nibin.bahulayansheena@ncs.com.sg"
    Env   = "Dev"
  }
}
