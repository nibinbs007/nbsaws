# Create VPC
resource "aws_vpc" "cmt1" {
    cidr_block = lookup(var.cidr, 1)
  tags = {
    Name = "cmt1"
    Email = "nibin.bahulayansheena@ncs.com.sg"
    Env = "Dev"
  }
}

#Create subnet 1
resource "aws_subnet" "cmt1-sub1" {
    cidr_block = lookup(var.cidr, 2)
    vpc_id = aws_vpc.cmt1.id
      tags = {
    Name = "cmt1-sub1"
    Email = "nibin.bahulayansheena@ncs.com.sg"
    Env = "Dev"
  }
}

#Create subnet 2
resource "aws_subnet" "cmt1-sub2" {
    cidr_block = lookup(var.cidr, 3)
    vpc_id = aws_vpc.cmt1.id
      tags = {
    Name = "cmt1-sub2"
    Email = "nibin.bahulayansheena@ncs.com.sg"
    Env = "Dev"
  }
}
