resource "aws_instance" "test" {

        ami = "ami-0cf7b2f456cd5efd4"
        instance_type = "t2.micro"
        tags = {

                Name = "machine_created_by_terraform"
        }
        subnet_id = "${aws_subnet.subnet-1.id}"
        key_name = "ohio_key_pair"
	associate_public_ip_address = true
	vpc_security_group_ids = [aws_security_group.web_sg.id]
}
