resource "aws_eip" "bastion_eip" {
    vpc = true
    instance = "${aws_instance.bastion.id}"
  
}
resource "aws_eip_association" "eip_assoc" {
  instance_id   = "${aws_instance.bastion.id}"
  allocation_id = "${aws_eip.bastion_eip.id}"
}
