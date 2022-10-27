provider "aws" {
  region = lookup(var.awsprops, "region")
}

resource "aws_instance" "project-chaitu1" {
  ami = lookup(var.awsprops, "ami")
  instance_type = lookup(var.awsprops, "itype")
  subnet_id = lookup(var.awsprops, "subnet") #FFXsubnet2
  associate_public_ip_address = lookup(var.awsprops, "publicip")
  key_name = lookup(var.awsprops, "keyname")


  vpc_security_group_ids = [
    aws_security_group.project-chaitu-sg.id
  ]
  user_data = file("data.tpl")
  
  tags = {
    Name ="SERVER01"
    Environment = "DEV"
    OS = "UBUNTU"
    Managed = "CHAITU"
  }

  depends_on = [ aws_security_group.project-chaitu-sg ]
}
resource "aws_instance" "project-chaitu2" {
  ami = lookup(var.awsprops, "ami")
  instance_type = lookup(var.awsprops, "itype")
  subnet_id = lookup(var.awsprops, "subnet") #FFXsubnet2
  associate_public_ip_address = lookup(var.awsprops, "publicip")
  key_name = lookup(var.awsprops, "keyname")


  vpc_security_group_ids = [
    aws_security_group.project-chaitu-sg.id
  ]
  user_data = file("data.tpl")
  
  tags = {
    Name ="SERVER02"
    Environment = "DEV"
    OS = "UBUNTU"
    Managed = "CHAITU"
  }

  depends_on = [ aws_security_group.project-chaitu-sg ]
}
