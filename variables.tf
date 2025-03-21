variable "proxmox_api_url" {
  description = "The Proxmox API URL"
  type = string
}

variable "proxmox_api_token_id" {
  description = "Proxmox API Token ID"
  type = string
}

variable "proxmox_api_token_secret" {
  description = "Proxmox API Token Secret"
  type = string
  sensitive = true
}

variable "proxmox_node" {
  description = "Proxmox Node"
  type = string
  default = "pve"
}
