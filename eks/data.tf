# Using this remote data source, we are fetching the outputs from remote state file. in this case VPC Statefile
data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "b49-tf-remote-state-bucket"
    key    = "vpc/dev/terraform.tfstate"
    region = "us-east-1"
  }
}