#Create VPC
resource "aws_vpc" "git" {
    cidr_block = lookup(var.cidr,1)
    tags = {
        Name  = "vpc1_${lookup(var.tags,"name")}"
    Email = lookup(var.tags, "email")
    }
}

#subnet
resource "aws_subnet" "git_sub" {
  cidr_block = lookup(var.cidr,2)
  vpc_id = aws_vpc.git.id
  tags = {
        Name  = "sub1_${lookup(var.tags,"name")}"
    Email = lookup(var.tags, "email")
    }
}

resource "aws_subnet" "git_sub" {
  cidr_block = lookup(var.cidr,3)
  vpc_id = aws_vpc.git.id
  tags = {
        Name  = "sub1_${lookup(var.tags,"name")}"
    Email = lookup(var.tags, "email")
    }
}

