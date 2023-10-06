# Create Windows VM
resource "aws_instance" "cmt1-win" {
  ami                         = "ami-062508d30d9f2cb68"
  instance_type               = "t2.micro"
  key_name                    = "git-key"
  subnet_id                   = aws_subnet.cmt1-sub1.id
  vpc_security_group_ids      = [aws_security_group.cmt1-sg1.id]
  associate_public_ip_address = true
  tags = {
    Name  = "cmt1-win"
    Email = var.email
    Env   = "Dev"
  }
}

/*#Create Linux VM
resource "aws_instance" "cmt1-app" {
  ami                         = "ami-0464f90f5928bccb8"
  instance_type               = "t2.micro"
  key_name                    = "git-key"
  subnet_id                   = aws_subnet.cmt1-sub1.id
  vpc_security_group_ids      = [aws_security_group.cmt1-sg1.id]
  associate_public_ip_address = true
  count = 2
  tags = {
    Name = "cmt1-app${count.index}"
    Email = var.email
    Env   = "Dev"
  }  
}
*/

#Create Redhat Ansible node
resource "aws_instance" "Ansible" {
  ami                         = "ami-02acda7aaa1f944e5"
  instance_type               = "t2.micro"
  key_name                    = "git-key"
  subnet_id                   = aws_subnet.cmt1-sub1.id
  vpc_security_group_ids      = [aws_security_group.cmt1-sg1.id]
  associate_public_ip_address = true
  tags = {
    Name = "Ansible"
    Email = var.email
    Env   = "Dev"
  }  
}

#Create redhat workloads
resource "aws_instance" "Linux_WL" {
  ami                         = "ami-02acda7aaa1f944e5"
  instance_type               = "t2.micro"
  key_name                    = "git-key"
  subnet_id                   = aws_subnet.cmt1-sub1.id
  vpc_security_group_ids      = [aws_security_group.cmt1-sg1.id]
  associate_public_ip_address = true
  count = 2
  tags = {
    Name = "Ansible"
    Email = var.email
    Env   = "Dev"
  }  
}
