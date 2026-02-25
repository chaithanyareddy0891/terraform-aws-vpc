output "vpc_id" {
    value = aws_vpc.main.id
}

output "igw_id" {
    value = aws_internet_gateway.main.id
}

output "az_info" {
  value = data.aws_availability_zones.available
}

output "default_vpc_info" {
    value = data.aws_vpc.default
}

output "default_vpc_id" {
  value = data.aws_vpc.default.id
}

output "default_route_table_id" {
  value = data.aws_route_table.default.id
}