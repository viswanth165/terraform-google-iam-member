terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.90.1"
    }
  }
}


provider "google" {
  region = "ap-south-1a"
}
