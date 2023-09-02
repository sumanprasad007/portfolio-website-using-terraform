terraform {
  backend "s3" {
    bucket = "s3-remote-state-bucket"
    key    = "remote"
    region = "us-east-1"
  }
}