variable "x"{
	type=map
}
variable "vpc_cidr"{
	default="192.168.0.0/24"
}
resource "aws_vpc" "vpc1"{
	cidr_block=var.vpc_cidr
}
resource "aws_subnet" "sn1"{
	cidr_block=var.vpc_cidr
	vpc_id=aws_vpc.vpc1.id
	tags={
		Name="MBAPP"
	availability_zone="ap-sotheast-1a"
	vpc_id=aws_vpc.vpc1.id

}
resource "aws_eip" "myeip"{
	
}
