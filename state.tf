terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.28.0"
    }
  }
}


terraform{
    backend "s3"{
        bucket = "tomike-aws-cicd-pipeline"
        encrypt = true
        key = "terraform.tfstate"
        region = "eu-west-3"
    }
}