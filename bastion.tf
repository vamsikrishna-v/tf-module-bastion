resource "aws_instance" "bastion" {
 
  ami                         = "ami-969ab1f6"  //"${var.bastion_ami}"
  instance_type               = "t2.micro"
  #security_groups             = ["${aws_security_group.ucas-bastion-sg.name}"]
  vpc_security_group_ids      = ["${aws_security_group.ucas-bastion-sg.id}"]
  #subnet_id = "${aws_subnet.public}
  vpc_id = "${aws_vpc.testvpc.id}"
  
 // associate_public_ip_address = true

  tags = {
      Name = "UCAS BASTION HOST"
  }
}
