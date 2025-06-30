![managing-kubernetes-using-terraform-879](https://github.com/user-attachments/assets/eb67af3c-6496-4ac6-9b2e-858c917ffbb8)

## Module | Kubernetes  🚀🚀🚀
The Kubernetes provider for Terraform is a plugin that enables full lifecycle management of Kubernetes resources. This provider is maintained internally by HashiCorp.


🎯  Key Features
```
✅ Launch EC2 Instances
✅ Install K3S Binary ( Kubernetes )
✅ Prepare Cluster Configuration
✅ Deploy Helm Charts 
```

🚀 
```
terraform init
terraform validate
terraform plan -var-file="template.tfvars"
terraform apply -var-file="template.tfvars" -auto-approve
```

🧩 Config 

```
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
```

