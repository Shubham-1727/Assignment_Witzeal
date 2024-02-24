resource "aws_route_table" "public-rt" {
        vpc_id = "${aws_vpc.custom-vpc.id}"

        route {
                cidr_block = "0.0.0.0/0"
                gateway_id = "${aws_internet_gateway.custom-vpc-igw.id}"
	}
	route {
		cidr_block = "172.31.0.0/20"
		vpc_peering_connection_id = "${aws_vpc_peering_connection.vpc_peering.id}"
	}
		tags = {
				Name = "custom-vpc-route-table"
		}
}
