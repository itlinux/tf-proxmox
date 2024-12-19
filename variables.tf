variable "token" {}
variable "username" {
    default = "root"
}
variable "username_id" {}
variable "debug_set" {
    default = "true"
}
variable "description" {
   default = "Terraform Demo"  
}
variable "startup" {
    default = "1"
}
variable "mem" {
    default = "8196"
}
variable "cores" {
    default = "2"
}
variable "host_cpu" {
    default = "host"
}
variable "numa" {
  default =  "false"
}
variable "hotplug_options" {
  default = "network,disk,usb"
}
variable "tagging" {
    default = "remo, demo"
}
variable "vmstate" {
    default = "running"
}
variable "vmcount" {
    default = "3"
}
variable "VM-name" {
  default = "VM-demo-tf"
}
variable "clone_from" {
  default = "tf-temp-vm"
}
variable "full_clone_setting" {
    default = "true"
}
variable "target_host" {
    default = "pve1"  
}
variable "agent_enabled" {
    default = "1"
}

# NETWORKING
variable "network_bridge" {
    default = "vmbr0"
}
variable "network_firewall" {
    default = "true"
}
variable "network_link_down" {
    default = "false"
}
variable "network_model" {
    default = "virtio"
}
variable "network_mtu" {
    default = "1500"
}
variable "autoreboot" {
    default = "true"
}