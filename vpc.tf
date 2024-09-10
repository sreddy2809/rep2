variable "x"{
	type=map
}
resource "aws_vpc" "vpc1"{
	cidr_block="10.0.0.0/24"
}
resource "aws_subnet" "sn1"{
	cidr_block="10.0.0.0/24"
	vpc_id=aws_vpc.vpc1.id
	tags={
		Name="MBAPP"
	availability_zone="ap-sotheast-1a"
	vpc_id=aws_vpc.vpc1.id

}
resource "aws_eip" "myeip"{
	
}