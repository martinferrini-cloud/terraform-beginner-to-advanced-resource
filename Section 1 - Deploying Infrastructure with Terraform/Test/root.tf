terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  profile = "martincho5general"
}

resource "aws_instance" "myec2" {
  ami = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
}

# Configure the GitHub Provider
provider "github" {
    token = "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"
}

resource "github_repository" "example" {
  name        = "terraformrepo"
  visibility = "private"
}
