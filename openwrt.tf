resource "proxmox_vm_qemu" "openwrt" {
  count = 1
  name = "openwrt-${count.index + 1}"
  target_node = var.proxmox_node
  
  # Si vous avez un template OpenWRT
  clone = "openwrt-template"
  
  # OU si vous utilisez une image ISO (décommentez)
  # iso = "local:iso/openwrt-x86-64-generic-squashfs-combined.img"
  
  cores = 2
  sockets = 1
  memory = 1024
  
  network {
    model = "virtio"
    bridge = "vmbr0"
  }
  
  disk {
    type = "scsi"
    storage = "local-lvm"
    size = "8G"
    format = "raw"
  }
}
