terraform {
  required_providers {
    proxmox = {
      source  = "Terraform-for-Proxmox/proxmox"
      version = "0.0.1"
    }
  }
}

provider "proxmox" {
  pm_debug = var.debug_set 
  pm_api_url = "https://pve2:8006/api2/json"   
  pm_user  = var.username 
  pm_api_token_id = var.username_id
  pm_api_token_secret = var.token 
  pm_tls_insecure = true
}