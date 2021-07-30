#__________________________________________________________
#
# Intersight UCS Domain Profile Variables
#__________________________________________________________

variable "assign_domain" {
  default     = false
  description = "Flag to Assign Policies to Domain or not."
  type        = bool
}

variable "assign_switches" {
  default     = false
  description = "Setting this Flag to True will Assign Switches to Profile."
  type        = bool
}

variable "configure_fibre_channel" {
  default     = false
  description = "Flag to Specify if Fibre-Channel should be configured."
  type        = bool
}

variable "configure_snmp" {
  default     = false
  description = "Flag to Specify if the SNMP Policy should be configured."
  type        = bool
}

variable "configure_snmp_type" {
  default     = "snmp_community"
  description = "When configuring SNMP, should the script use snmp communities or users.  Options are {snmp_community|snmp_1_user|snmp_2_users}."
  type        = string
}

variable "configure_syslog" {
  default     = false
  description = "Flag to Specify if the Syslog Policy should be configured."
  type        = bool
}

variable "snmp_community" {
  default     = ""
  description = "The default SNMPv1, SNMPv2c community name or SNMPv3 username to include on any trap messages sent to the SNMP host. The name can be 18 characters long."
  sensitive   = true
  type        = string
}

variable "snmp_trap_community" {
  default     = ""
  description = "The default SNMPv1, SNMPv2c community name or SNMPv3 username to include on any trap messages sent to the SNMP host. The name can be 18 characters long."
  sensitive   = true
  type        = string
}

variable "snmp_user_1_auth_password" {
  default     = ""
  description = "Authorization password for the user."
  sensitive   = true
  type        = string
}

variable "snmp_user_1_privacy_password" {
  default     = ""
  description = "Privacy password for the user."
  sensitive   = true
  type        = string
}

variable "snmp_user_2_auth_password" {
  default     = ""
  description = "Authorization password for the user."
  sensitive   = true
  type        = string
}

variable "snmp_user_2_privacy_password" {
  default     = ""
  description = "Privacy password for the user."
  sensitive   = true
  type        = string
}


variable "ucs_domain_profile" {
  default = {
    default = { # The UCS Domain Profile Name will be {each.key}.  In this case it would be default if left like this.
      domain_action                      = "No-op"
      domain_description                 = ""
      domain_descr_fi_a                  = ""
      domain_descr_fi_b                  = ""
      domain_policy_bucket               = []
      domain_serial_a                    = ""
      domain_serial_b                    = ""
      dns_description                    = ""
      dns_dynamic                        = false
      dns_ipv6_enable                    = false
      dns_servers_v4                     = ["208.67.220.220", "208.67.222.222"]
      dns_servers_v6                     = []
      dns_update_domain                  = ""
      flow_control_description           = ""
      flow_control_mode                  = "auto"
      flow_control_receive               = "Disabled"
      flow_control_send                  = "Disabled"
      link_agg_description               = ""
      link_agg_lacp_rate                 = "normal"
      link_agg_suspend_individual        = false
      link_ctrl_description              = ""
      link_ctrl_udld_admin_state         = "Enabled"
      link_ctrl_udld_mode                = "normal"
      multicast_description              = ""
      multicast_querier_ip               = ""
      multicast_querier_state            = "Disabled"
      multicast_snooping_state           = "Enabled"
      ntp_description                    = ""
      ntp_servers                        = ["time-a-g.nist.gov", "time-b-g.nist.gov"]
      ntp_timezone                       = "Etc/GMT"
      organization                       = "default"
      port_policy_a_description          = ""
      port_policy_b_description          = ""
      ports_device_model                 = "UCS-FI-6454"
      ports_fc_ports                     = [1, 4]
      ports_fc_slot_id                   = 1
      ports_lan_pc_breakoutswport        = 0
      ports_lan_pc_ports                 = [49, 50]
      ports_lan_pc_speed                 = "Auto"
      ports_lan_pc_slot_id               = 1
      ports_san_fill_pattern             = "Arbff"
      ports_san_pc_breakoutswport        = 0
      ports_san_pc_ports                 = [1, 2]
      ports_san_pc_speed                 = "16Gbps"
      ports_san_pc_slot_id               = 1
      ports_servers                      = "5-18"
      qos_best_effort_admin_state        = "Enabled"
      qos_best_effort_bandwidth          = 5
      qos_best_effort_mtu                = 9216
      qos_best_effort_multicast_optimize = false
      qos_best_effort_weight             = 1
      qos_bronze_admin_state             = "Enabled"
      qos_bronze_bandwidth               = 5
      qos_bronze_cos                     = 1
      qos_bronze_mtu                     = 9216
      qos_bronze_multicast_optimize      = false
      qos_bronze_packet_drop             = true
      qos_bronze_weight                  = 1
      qos_description                    = ""
      qos_fc_bandwidth                   = 39
      qos_fc_weight                      = 6
      qos_gold_admin_state               = "Enabled"
      qos_gold_bandwidth                 = 23
      qos_gold_cos                       = 4
      qos_gold_mtu                       = 9216
      qos_gold_multicast_optimize        = false
      qos_gold_packet_drop               = true
      qos_gold_weight                    = 4
      qos_platinum_admin_state           = "Enabled"
      qos_platinum_bandwidth             = 23
      qos_platinum_cos                   = 5
      qos_platinum_mtu                   = 9216
      qos_platinum_multicast_optimize    = false
      qos_platinum_packet_drop           = false
      qos_platinum_weight                = 4
      qos_silver_admin_state             = "Enabled"
      qos_silver_bandwidth               = 5
      qos_silver_cos                     = 2
      qos_silver_mtu                     = 9216
      qos_silver_multicast_optimize      = false
      qos_silver_packet_drop             = true
      qos_silver_weight                  = 1
      snmp_description                   = ""
      snmp_system_contact                = ""
      snmp_system_location               = ""
      snmp_trap_destinations             = []
      snmp_user_1_auth_type              = "SHA"
      snmp_user_1_name                   = "snmp_user_1"
      snmp_user_1_security_level         = "AuthPriv"
      snmp_user_2_auth_type              = "SHA"
      snmp_user_2_name                   = "snmp_user_2"
      snmp_user_2_security_level         = "AuthPriv"
      sw_ctrl_description                = ""
      sw_ctrl_mac_aging_option           = "Default"
      sw_ctrl_mac_aging_time             = 14500
      sw_ctrl_udld_message_interval      = 15
      sw_ctrl_udld_recovery_action       = "reset"
      sw_ctrl_vlan_optimization          = true
      syslog_description                 = ""
      syslog_destinations                = []
      syslog_severity                    = "warning"
      tags                               = []
      vlan_description                   = ""
      vlan_native                        = 1
      vlan_list                          = "2-3"
      vsan_a_description                 = ""
      vsan_b_description                 = ""
      vsan_enable_trunking               = false
      vsan_fabric_a                      = 100
      vsan_fabric_a_fcoe                 = ""
      vsan_fabric_b                      = 200
      vsan_fabric_b_fcoe                 = ""
    }
  }
  description = "Intersight UCS Domain Profile Variable Map.\r\n1. organization - Name of the Intersight Organization to assign this pool to.  https://intersight.com/an/settings/organizations/ \r\n2. For the remainder of the option documentation refer to these sources:\r\n* https://github.com/terraform-cisco-modules/terraform-intersight-imm/tree/master/modules/domain_profile_cluster\r\n* https://github.com/terraform-cisco-modules/terraform-intersight-imm/tree/master/modules/domain_profile_switch"
  type = map(object(
    {
      domain_action                      = optional(string)
      domain_description                 = optional(string)
      domain_descr_fi_a                  = optional(string)
      domain_descr_fi_b                  = optional(string)
      domain_policy_bucket               = optional(list(map(string)))
      domain_serial_a                    = optional(string)
      domain_serial_b                    = optional(string)
      dns_description                    = optional(string)
      dns_dynamic                        = optional(bool)
      dns_ipv6_enable                    = optional(bool)
      dns_servers_v4                     = optional(list(string))
      dns_servers_v6                     = optional(list(string))
      dns_update_domain                  = optional(string)
      flow_control_description           = optional(string)
      flow_control_mode                  = optional(string)
      flow_control_receive               = optional(string)
      flow_control_send                  = optional(string)
      link_agg_description               = optional(string)
      link_agg_lacp_rate                 = optional(string)
      link_agg_suspend_individual        = optional(bool)
      link_ctrl_description              = optional(string)
      link_ctrl_udld_admin_state         = optional(string)
      link_ctrl_udld_mode                = optional(string)
      multicast_description              = optional(string)
      multicast_querier_ip               = optional(string)
      multicast_querier_state            = optional(string)
      multicast_snooping_state           = optional(string)
      ntp_description                    = optional(string)
      ntp_servers                        = optional(list(string))
      ntp_timezone                       = optional(string)
      organization                       = optional(string)
      port_policy_a_description          = optional(string)
      port_policy_b_description          = optional(string)
      ports_device_model                 = optional(string)
      ports_fc_ports                     = optional(list(string))
      ports_fc_slot_id                   = optional(number)
      ports_lan_pc_breakoutswport        = optional(number)
      ports_lan_pc_ports                 = optional(list(string))
      ports_lan_pc_speed                 = optional(string)
      ports_lan_pc_slot_id               = optional(number)
      ports_san_fill_pattern             = optional(string)
      ports_san_pc_breakoutswport        = optional(number)
      ports_san_pc_ports                 = optional(list(string))
      ports_san_pc_speed                 = optional(string)
      ports_san_pc_slot_id               = optional(number)
      ports_servers                      = optional(string)
      qos_best_effort_admin_state        = optional(string)
      qos_best_effort_bandwidth          = optional(number)
      qos_best_effort_mtu                = optional(number)
      qos_best_effort_multicast_optimize = optional(bool)
      qos_best_effort_weight             = optional(number)
      qos_bronze_admin_state             = optional(string)
      qos_bronze_bandwidth               = optional(number)
      qos_bronze_cos                     = optional(number)
      qos_bronze_mtu                     = optional(number)
      qos_bronze_multicast_optimize      = optional(bool)
      qos_bronze_packet_drop             = optional(bool)
      qos_bronze_weight                  = optional(number)
      qos_description                    = optional(string)
      qos_fc_bandwidth                   = optional(number)
      qos_fc_weight                      = optional(number)
      qos_gold_admin_state               = optional(string)
      qos_gold_bandwidth                 = optional(number)
      qos_gold_cos                       = optional(number)
      qos_gold_mtu                       = optional(number)
      qos_gold_multicast_optimize        = optional(bool)
      qos_gold_packet_drop               = optional(bool)
      qos_gold_weight                    = optional(number)
      qos_platinum_admin_state           = optional(string)
      qos_platinum_bandwidth             = optional(number)
      qos_platinum_cos                   = optional(number)
      qos_platinum_mtu                   = optional(number)
      qos_platinum_multicast_optimize    = optional(bool)
      qos_platinum_packet_drop           = optional(bool)
      qos_platinum_weight                = optional(number)
      qos_silver_admin_state             = optional(string)
      qos_silver_bandwidth               = optional(number)
      qos_silver_cos                     = optional(number)
      qos_silver_mtu                     = optional(number)
      qos_silver_multicast_optimize      = optional(bool)
      qos_silver_packet_drop             = optional(bool)
      qos_silver_weight                  = optional(number)
      snmp_description                   = optional(string)
      snmp_system_contact                = optional(string)
      snmp_system_location               = optional(string)
      snmp_trap_destinations             = optional(list(map(string)))
      snmp_user_1_auth_type              = optional(string)
      snmp_user_1_name                   = optional(string)
      snmp_user_1_security_level         = optional(string)
      snmp_user_2_auth_type              = optional(string)
      snmp_user_2_name                   = optional(string)
      snmp_user_2_security_level         = optional(string)
      sw_ctrl_description                = optional(string)
      sw_ctrl_mac_aging_option           = optional(string)
      sw_ctrl_mac_aging_time             = optional(number)
      sw_ctrl_udld_message_interval      = optional(number)
      sw_ctrl_udld_recovery_action       = optional(string)
      sw_ctrl_vlan_optimization          = optional(bool)
      syslog_description                 = optional(string)
      syslog_destinations                = optional(list(map(string)))
      syslog_severity                    = optional(string)
      tags                               = optional(list(map(string)))
      vlan_description                   = optional(string)
      vlan_native                        = optional(number)
      vlan_list                          = optional(string)
      vsan_a_description                 = optional(string)
      vsan_b_description                 = optional(string)
      vsan_enable_trunking               = optional(bool)
      vsan_fabric_a                      = optional(number)
      vsan_fabric_a_fcoe                 = optional(string)
      vsan_fabric_b                      = optional(number)
      vsan_fabric_b_fcoe                 = optional(string)
    }
  ))
}
