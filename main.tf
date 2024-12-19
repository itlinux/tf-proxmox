resource "proxmox_vm_qemu" "resource-name" {
  name             = "${var.VM-name}-${count.index + 1}"
  count            = var.vmcount
  target_node      = var.target_host
  agent            = var.agent_enabled
  #iso             = "ISO file name"
  desc             = var.description
  startup          = var.startup
  memory           = var.mem
  cores            = var.cores
  cpu              = var.host_cpu
  numa             = var.numa
  hotplug          = var.hotplug_options
  tags             = var.tagging
  vm_state         = var.vmstate
  automatic_reboot = var.autoreboot
  onboot           = var.onboot_setting
  ssh_user         = var.sshuser
  os_type          = var.ostype

  ### Clone VM operation
  clone            = var.clone_from
  full_clone       = var.full_clone_setting

  network {
    bridge         = var.network_bridge
    firewall       = var.network_firewall
    link_down      = var.network_link_down
    model          = var.network_model
    mtu            = var.network_mtu
  }
  sshkeys          = <<-EOT
          ${var.ssh_public_key}
  EOT
}
