resource "aws_internet_gateway" "custom-vpc-igw" {

        vpc_id = "${aws_vpc.custom-vpc.id}"
        tags = {
                Name = "custom-vpc-igw"
        }
}
