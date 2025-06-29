terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.25"  # Adjust to latest stable
    }
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"  # Or point to another kubeconfig file
}
