
resource "aws_eip" "nat_gateway" {
  vpc = true
}

resource "aws_nat_gateway" "nat_gateway" {
    allocation_id = var.eip_id
    subnet_id = var.subpubid
    tags = {
       Name = "aknatgw"
  }
}
