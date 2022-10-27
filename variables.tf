variable "awsprops" {
    default = {
    region = "us-east-1"
    vpc = "vpc-0f5fe3762f94e7d94"
    ami = "ami-08c40ec9ead489470"
    itype = "t2.micro"
    subnet = "subnet-026983e05068a95a2"
    publicip = true
    keyname = "gsdemo"
    secgroupname = "chaitu-Sec-Group"
  }
}
variable "vpc_id" {
    default = "vpc-0f5fe3762f94e7d94"
}
variable "subnet1" {
    default = "subnet-026983e05068a95a2"
}
variable "subnet2" {
    default = "subnet-0e5e7b35a390f3f3b"
}
