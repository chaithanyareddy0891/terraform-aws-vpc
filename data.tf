data "aws_availability_zones" "available" {
  state = "available"
}

data "aws_vpc" "default" {
  default = true
}

# Get the default route table for that VPC
data "aws_route_table" "default" {
  vpc_id = data.aws_vpc.default.id
  # This will return the main route table of the VPC
  filter {
    name   = "association.main"
    values = ["true"]
  }
}

