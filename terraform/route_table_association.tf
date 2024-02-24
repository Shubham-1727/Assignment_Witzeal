resource "aws_route_table_association" "public-routing-1" {

        subnet_id = "${aws_subnet.subnet-1.id}"
        route_table_id = "${aws_route_table.public-rt.id}"
}
