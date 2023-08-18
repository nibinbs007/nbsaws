# Create public route table
resource "aws_route_table" "cmt1_pub_rt1" {
  vpc_id     = aws_vpc.cmt1.id
  depends_on = [aws_vpc.cmt1, aws_internet_gateway.cmt1-igw]

  route {
    cidr_block = "${var.myip}/32"
    gateway_id = aws_internet_gateway.cmt1-igw.id
  }

  tags = {
    Name  = "cmt1-public-rt1"
    Email = var.email
    Env   = "Dev"
  }
}

#Create Private Route Table
resource "aws_route_table" "cmt1_priv_rt1" {
  vpc_id     = aws_vpc.cmt1.id
  depends_on = [aws_vpc.cmt1, aws_nat_gateway.cmt1-natgw]
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.cmt1-natgw.id
  }

  tags = {
    Name  = "cmt1-priv_rt1"
    Email = var.email
    Env   = "Dev"
  }
}
# Create public route table association
resource "aws_route_table_association" "cmt1-pub" {
  subnet_id      = aws_subnet.cmt1-sub1.id
  route_table_id = aws_route_table.cmt1_pub_rt1.id
}

#Create private route table association
resource "aws_route_table_association" "cmt1-priv" {
  subnet_id      = aws_subnet.cmt1-sub2.id
  route_table_id = aws_route_table.cmt1_priv_rt1.id
}