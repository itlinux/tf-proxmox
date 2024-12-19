output "instance_ip_addr" {
    value = proxmox_vm_qemu.resource-name[*].default_ipv4_address
}

output "vm_id" {
  description = "The ID of the VM created"
  value       = proxmox_vm_qemu.resource-name[*].id
}