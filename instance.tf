resource "aws_instance" "WindowsServer" {
  ami                  = "ami-07af9ea0679ca6d69"
  instance_type        = "t3.micro"
  vpc_security_group_ids      = [aws_security_group.instancesg.id]
  iam_instance_profile = aws_iam_instance_profile.instance_profile.id
  user_data            = file("ansibleuserdata.ps1")

}
