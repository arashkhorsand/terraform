terraform {
backend "s3" {
    bucket = "terraform-arash"
    key    = "path/terraform.tfstate"
    region = "ca-central-1"
}
}