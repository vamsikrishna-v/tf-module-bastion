output "bastion_public_ip" {
  value = "${aws_instance.bastion.public_ip}"
}

output "elastic_ip" {
  value = "${aws_eip.bastion_eip.public_ip}"
}

output "vpcdet" {
  value = "${aws_vpc.testvpc}"
}