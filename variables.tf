//////
// vSphere variables
//////


variable "vcd_vdc" {
  type        = string
  description = "This is the vcd vdc for the environment."
}
variable "vcd_user" {
  type        = string
  description = "This is the vcd user."
}
variable "vcd_password" {
  type        = string
  description = "This is the vcd password for the environment."
}
variable "vcd_org" {
  type        = string
  description = "This is the vcd org string from the console for the environment."
}
variable "vcd_url" {
  type        = string
  description = "This is the vcd url for the environment."
}
variable "vcd_catalog" {
  type        = string
  description = "This is the vcd catalog to use for the environment."
  default     = "Public Catalog"
}

variable "lb_template" {
  type        = string
  description = "This is the name of the LB template to clone."
}

variable "rhcos_template" {
  type        = string
  description = "This is the name of the RHCOS template to clone."
}

variable "mac_prefix" {
  type        = string
  description = "Prefix for creating MAC addresses for control, compute and storage nodes (first five parts. MAC address is created by taking this prefix appending it with the final part of the ip address"
}
variable "vm_network" {
  type        = string
  description = "This is the name of the publicly accessible network for cluster ingress and access."
  default     = "VM Network"
}

variable "loadbalancer_network" {
  type        = string
  description = "This is the name of the loadbalancer network for cluster ingress and access"
  default     = ""
}

variable "vm_dns_addresses" {
  type        = list(string)
  description = "List of DNS servers to use for your OpenShift Nodes"
  default     = ["8.8.8.8", "8.8.4.4"]
}



/////////
// OpenShift cluster variables
/////////

variable "cluster_id" {
  type        = string
  description = "This cluster id must be of max length 27 and must have only alphanumeric or hyphen characters."
}

variable "base_domain" {
  type        = string
  description = "The base DNS zone to add the sub zone to."
}

variable "machine_cidr" {
  type = string
}

/////////
// Bootstrap machine variables
/////////
variable "bootstrap_ip_address" {
  type    = string
  default = ""
}

variable "bootstrap_mac_address" {
  type    = string
  default = ""
}
variable "bootstrap_disk" {
  type    = string
  default = ""
}

variable "lb_ip_address" {
  type    = string
  default = ""
}
variable "lb_mac_address" {
  type    = string
  default = ""
}


///////////
// control-plane machine variables
///////////


variable "control_plane_count" {
  type    = string
  default = "3"
}

variable "control_plane_ip_addresses" {
  type    = list(string)
  default = []
}

variable "control_plane_mac_addresses" {
  type    = list(string)
  default = []
}
variable "control_plane_memory" {
  type    = string
  default = "32768"
}

variable "control_plane_num_cpus" {
  type    = string
  default = "8"
}
variable "control_disk" {
  type    = string
}




//////////
// compute machine variables
//////////


variable "compute_count" {
  type    = string
  default = "6"
}

variable "compute_ip_addresses" {
  type    = list(string)
  default = []
}

variable "compute_mac_addresses" {
  type    = list(string)
  default = []
}

variable "compute_memory" {
  type    = string
  default = "32768"
}

variable "compute_num_cpus" {
  type    = string
  default = "16"
}
variable "compute_disk" {
  type    = string
}



//////////
// storage machine variables
//////////

variable "storage_count" {
  type    = string
  default = "0"
}

variable "storage_ip_addresses" {
  type    = list(string)
  default = []
}


variable "storage_memory" {
  type    = string
  default = "65536"
}

variable "storage_num_cpus" {
  type    = string
  default = "16"
}

variable "storage_disk" {
  type    = string
  default = "2097152"
}


//////////
// loadbalancer machine variables
// used to configure an extra nic for the loadbalancer
//////////

variable "loadbalancer_lb_ip_address" {
  type    = string
  default = ""
}

variable "loadbalancer_lb_machine_cidr" {
  type    = string
  default = ""
}

variable "openshift_pull_secret" {
  type = string
}

variable "openshift_cluster_cidr" {
  type    = string
  default = "10.128.0.0/14"
}

variable "openshift_service_cidr" {
  type    = string
  default = "172.30.0.0/16"
}

variable "openshift_host_prefix" {
  type    = string
  default = 23
}

variable "openshift_version" {
  type        = string
  description = "Specify the OpenShift version you want to deploy.  Must be 4.6 or later to use this automation"
  default     = "4.6"
}

variable "create_loadbalancer_vm" {
  type        = bool
  description = "Create a LoadBalancer and DNS VM for your cluster"
  default     = false
}

variable "create_vms_only" {
  type        = bool
  description = "only create vms no OpenShift Install"
  default     = false
}

