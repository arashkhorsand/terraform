resource "aws_instance" "terr-1" {
    ami     =  var.ami_id #variable in variables.tf
    key_name = var.key_name #variable key_name in variables.tf
    instance_type= var.instance_type #variable instance_type in variables.tf
    tags = {
    Name= var.machine_name
    created_by = "Arash"
    }   
}