#__________________________________________________________
#
# Local Variables Section
#__________________________________________________________

locals {
  #__________________________________________________________
  #
  # Intersight Pools Section
  #__________________________________________________________
  #______________________________________________
  #
  # Fibre-Channel Pools
  #______________________________________________
  fc_pools_map = {
    for k, v in var.fc_pools_map : k => {
      assignment_order = ( v.assignment_order != null ? v.assignment_order : "default" )
      description      = ( v.description != null ? v.description : "" )
      id_blocks = ( v.id_blocks != null ? v.id_blocks : [
        {
          from = "20:00:00:25:B5:0a:00:00"
          to   = "20:00:00:25:B5:0a:00:ff"
        }
      ] )
      organization = ( v.organization != null ? v.organization : "default" )
      pool_purpose = ( v.pool_purpose != null ? v.pool_purpose : "WWPN" )
      tags         = ( v.tags != null ? v.tags : [] )
    }
  }
  #______________________________________________
  #
  # IP Pools
  #______________________________________________
  ip_pools_map = {
    for k, v in var.ip_pools_map : k => {
      assignment_order = ( v.assignment_order != null ? v.assignment_order : "default" )
      description      = ( v.description != null ? v.description : "" )
      dns_servers_v4   = ( v.dns_servers_v4 != null ? v.dns_servers_v4 : ["208.67.220.220", "208.67.222.222"] )
      dns_servers_v6   = ( v.dns_servers_v6 != null ? v.dns_servers_v6 : [] )
      ipv4_block       = ( v.ipv4_block != null ? v.ipv4_block : [] )
      ipv4_config      = ( v.ipv4_config != null ? v.ipv4_config : [] )
      ipv6_block       = ( v.ipv6_block != null ? v.ipv6_block : [] )
      ipv6_config      = ( v.ipv6_config != null ? v.ipv6_config : [] )
      organization     = ( v.organization != null ? v.organization : "default" )
      tags             = ( v.tags != null ? v.tags : [] )
    }
  }
  #______________________________________________
  #
  # IQN Pools
  #______________________________________________
  iqn_pools_map = {
    for k, v in var.iqn_pools_map : k => {
      assignment_order  = ( v.assignment_order != null ? v.assignment_order : "default" )
      description       = ( v.description != null ? v.description : "" )
      iqn_prefix        = ( v.iqn_prefix != null ? v.iqn_prefix : "iqn.2021-11.com.cisco" )
      iqn_suffix_blocks = ( v.iqn_suffix_blocks != null ? v.iqn_suffix_blocks : [] )
      organization      = ( v.organization != null ? v.organization : "default" )
      tags              = ( v.tags != null ? v.tags : [] )
    }
  }
  #______________________________________________
  #
  # MAC Pools
  #______________________________________________
  mac_pools_map = {
    for k, v in var.mac_pools_map : k => {
      assignment_order = ( v.assignment_order != null ? v.assignment_order : "default" )
      description      = ( v.description != null ? v.description : "" )
      mac_blocks       = ( v.mac_blocks != null ? v.mac_blocks : [] )
      organization     = ( v.organization != null ? v.organization : "default" )
      tags             = ( v.tags != null ? v.tags : [] )
    }
  }
  #______________________________________________
  #
  # UUID Pools
  #______________________________________________
  uuid_pools_map = {
    for k, v in var.uuid_pools_map : k => {
      assignment_order   = ( v.assignment_order != null ? v.assignment_order : "default" )
      description        = ( v.description != null ? v.description : "" )
      prefix             = ( v.prefix != null ? v.prefix : "" ) # "123e4567-e89b-42d3"
      organization       = ( v.organization != null ? v.organization : "default")
      tags               = ( v.tags != null ? v.tags : [] )
      uuid_suffix_blocks = ( v.uuid_suffix_blocks != null ? v.uuid_suffix_blocks : [] ) # [ { from = "e456-1234e89b42aa", size = 32768 } ]
    }
  }
  #__________________________________________________________
  #
  # UCS Domain Profiles Section
  #__________________________________________________________
  ucs_domain_profile = {
    for k, v in var.ucs_domain_profile : k => {
      assign_switches                    = ( v.assign_switches != null ? v.assign_switches : false )
      config_fibre_channel               = ( v.config_fibre_channel != null ? v.config_fibre_channel : false )
      domain_action                      = ( v.domain_action != null ? v.domain_action : "No-op" )
      domain_description                 = ( v.domain_description != null ? v.domain_description : "" )
      domain_descr_fi_a                  = ( v.domain_descr_fi_a != null ? v.domain_descr_fi_a : "" )
      domain_descr_fi_b                  = ( v.domain_descr_fi_b != null ? v.domain_descr_fi_b : "" )
      domain_policy_bucket               = ( v.domain_policy_bucket != null ? v.domain_policy_bucket : [] )
      domain_serial_a                    = ( v.domain_serial_a != null ? v.domain_serial_a : "" )
      domain_serial_b                    = ( v.domain_serial_b != null ? v.domain_serial_b : "" )
      dns_description                    = ( v.dns_description != null ? v.dns_description : "" )
      dns_dynamic                        = ( v.dns_dynamic != null ? v.dns_dynamic : false )
      dns_ipv6_enable                    = ( v.dns_ipv6_enable != null ? v.dns_ipv6_enable : false )
      dns_servers_v4                     = ( v.dns_servers_v4 != null ? v.dns_servers_v4 : ["208.67.220.220", "208.67.222.222"] )
      dns_servers_v6                     = ( v.dns_servers_v6 != null ? v.dns_servers_v6 : [] )
      dns_update_domain                  = ( v.dns_update_domain != null ? v.dns_update_domain : "" )
      flow_control_description           = ( v.flow_control_description != null ? v.flow_control_description : "" )
      flow_control_mode                  = ( v.flow_control_mode != null ? v.flow_control_mode : "auto" )
      flow_control_receive               = ( v.flow_control_receive != null ? v.flow_control_receive : "Disabled" )
      flow_control_send                  = ( v.flow_control_send != null ? v.flow_control_send : "Disabled" )
      link_agg_description               = ( v.link_agg_description != null ? v.link_agg_description : "" )
      link_agg_lacp_rate                 = ( v.link_agg_lacp_rate != null ? v.link_agg_lacp_rate : "normal" )
      link_agg_suspend_individual        = ( v.link_agg_suspend_individual != null ? v.link_agg_suspend_individual : false )
      link_ctrl_description              = ( v.link_ctrl_description != null ? v.link_ctrl_description : "" )
      link_ctrl_udld_admin_state         = ( v.link_ctrl_udld_admin_state != null ? v.link_ctrl_udld_admin_state : "Enabled" )
      link_ctrl_udld_mode                = ( v.link_ctrl_udld_mode != null ? v.link_ctrl_udld_mode : "normal" )
      multicast_description              = ( v.multicast_description != null ? v.multicast_description : "" )
      multicast_querier_ip               = ( v.multicast_querier_ip != null ? v.multicast_querier_ip : "" )
      multicast_querier_state            = ( v.multicast_querier_state != null ? v.multicast_querier_state : "Disabled" )
      multicast_snooping_state           = ( v.multicast_snooping_state != null ? v.multicast_snooping_state : "Enabled" )
      ntp_description                    = ( v.ntp_description != null ? v.ntp_description : "" )
      ntp_servers                        = ( v.ntp_servers != null ? v.ntp_servers : ["time-a-g.nist.gov", "time-b-g.nist.gov"] )
      ntp_timezone                       = ( v.ntp_timezone != null ? v.ntp_timezone : "Etc/GMT" )
      organization                       = ( v.organization != null ? v.organization : "default" )
      port_policy_a_description          = ( v.port_policy_a_description != null ? v.port_policy_a_description : "" )
      port_policy_b_description          = ( v.port_policy_b_description != null ? v.port_policy_b_description : "" )
      ports_device_model                 = ( v.ports_device_model != null ? v.ports_device_model : "UCS-FI-6454" )
      ports_fc_ports                     = ( v.ports_fc_ports != null ? v.ports_fc_ports : [1, 4] )
      ports_fc_slot_id                   = ( v.ports_fc_slot_id != null ? v.ports_fc_slot_id : 1 )
      ports_lan_pc_breakoutswport        = ( v.ports_lan_pc_breakoutswport != null ? v.ports_lan_pc_breakoutswport : 0 )
      ports_lan_pc_ports                 = ( v.ports_lan_pc_ports != null ? v.ports_lan_pc_ports : [49, 50] )
      ports_lan_pc_speed                 = ( v.ports_lan_pc_speed != null ? v.ports_lan_pc_speed : "Auto" )
      ports_lan_pc_slot_id               = ( v.ports_lan_pc_slot_id != null ? v.ports_lan_pc_slot_id : 1 )
      ports_san_fill_pattern             = ( v.ports_san_fill_pattern != null ? v.ports_san_fill_pattern : "Arbff" )
      ports_san_pc_breakoutswport        = ( v.ports_san_pc_breakoutswport != null ? v.ports_san_pc_breakoutswport : 0 )
      ports_san_pc_ports                 = ( v.ports_san_pc_ports != null ? v.ports_san_pc_ports : [1, 2] )
      ports_san_pc_speed                 = ( v.ports_san_pc_speed != null ? v.ports_san_pc_speed : "16Gbps" )
      ports_san_pc_slot_id               = ( v.ports_san_pc_slot_id != null ? v.ports_san_pc_slot_id : 1 )
      ports_servers                      = ( v.ports_servers != null ? v.ports_servers : "5-18" )
      qos_best_effort_admin_state        = ( v.qos_best_effort_admin_state != null ? v.qos_best_effort_admin_state : "Enabled" )
      qos_best_effort_bandwidth          = ( v.qos_best_effort_bandwidth != null ? v.qos_best_effort_bandwidth : 5 )
      qos_best_effort_mtu                = ( v.qos_best_effort_mtu != null ? v.qos_best_effort_mtu : 9216 )
      qos_best_effort_multicast_optimize = ( v.qos_best_effort_multicast_optimize != null ? v.qos_best_effort_multicast_optimize : false )
      qos_best_effort_weight             = ( v.qos_best_effort_weight != null ? v.qos_best_effort_weight : 1 )
      qos_bronze_admin_state             = ( v.qos_bronze_admin_state != null ? v.qos_bronze_admin_state : "Enabled" )
      qos_bronze_bandwidth               = ( v.qos_bronze_bandwidth != null ? v.qos_bronze_bandwidth : 5 )
      qos_bronze_cos                     = ( v.qos_bronze_cos != null ? v.qos_bronze_cos : 1 )
      qos_bronze_mtu                     = ( v.qos_bronze_mtu != null ? v.qos_bronze_mtu : 9216 )
      qos_bronze_multicast_optimize      = ( v.qos_bronze_multicast_optimize != null ? v.qos_bronze_multicast_optimize : false )
      qos_bronze_packet_drop             = ( v.qos_bronze_packet_drop != null ? v.qos_bronze_packet_drop : true )
      qos_bronze_weight                  = ( v.qos_bronze_weight != null ? v.qos_bronze_weight : 1 )
      qos_description                    = ( v.qos_description != null ? v.qos_description : "" )
      qos_fc_bandwidth                   = ( v.qos_fc_bandwidth != null ? v.qos_fc_bandwidth : 39 )
      qos_fc_weight                      = ( v.qos_fc_weight != null ? v.qos_fc_weight : 6 )
      qos_gold_admin_state               = ( v.qos_gold_admin_state != null ? v.qos_gold_admin_state : "Enabled" )
      qos_gold_bandwidth                 = ( v.qos_gold_bandwidth != null ? v.qos_gold_bandwidth : 23 )
      qos_gold_cos                       = ( v.qos_gold_cos != null ? v.qos_gold_cos : 4 )
      qos_gold_mtu                       = ( v.qos_gold_mtu != null ? v.qos_gold_mtu : 9216 )
      qos_gold_multicast_optimize        = ( v.qos_gold_multicast_optimize != null ? v.qos_gold_multicast_optimize : false )
      qos_gold_packet_drop               = ( v.qos_gold_packet_drop != null ? v.qos_gold_packet_drop : true )
      qos_gold_weight                    = ( v.qos_gold_weight != null ? v.qos_gold_weight : 4 )
      qos_platinum_admin_state           = ( v.qos_platinum_admin_state != null ? v.qos_platinum_admin_state : "Enabled" )
      qos_platinum_bandwidth             = ( v.qos_platinum_bandwidth != null ? v.qos_platinum_bandwidth : 23 )
      qos_platinum_cos                   = ( v.qos_platinum_cos != null ? v.qos_platinum_cos : 5 )
      qos_platinum_mtu                   = ( v.qos_platinum_mtu != null ? v.qos_platinum_mtu : 9216 )
      qos_platinum_multicast_optimize    = ( v.qos_platinum_multicast_optimize != null ? v.qos_platinum_multicast_optimize : false )
      qos_platinum_packet_drop           = ( v.qos_platinum_packet_drop != null ? v.qos_platinum_packet_drop : false )
      qos_platinum_weight                = ( v.qos_platinum_weight != null ? v.qos_platinum_weight : 4 )
      qos_silver_admin_state             = ( v.qos_silver_admin_state != null ? v.qos_silver_admin_state : "Enabled")
      qos_silver_bandwidth               = ( v.qos_silver_bandwidth != null ? v.qos_silver_bandwidth : 5 )
      qos_silver_cos                     = ( v.qos_silver_cos != null ? v.qos_silver_cos : 2 )
      qos_silver_mtu                     = ( v.qos_silver_mtu != null ? v.qos_silver_mtu : 9216 )
      qos_silver_multicast_optimize      = ( v.qos_silver_multicast_optimize != null ? v.qos_silver_multicast_optimize : false )
      qos_silver_packet_drop             = ( v.qos_silver_packet_drop != null ? v.qos_silver_packet_drop : true )
      qos_silver_weight                  = ( v.qos_silver_weight != null ? v.qos_silver_weight : 1 )
      snmp_config_type                   = ( v.snmp_description != null ? v.snmp_description : "" )
      snmp_description                   = ( v.snmp_description != null ? v.snmp_description : "" )
      snmp_system_contact                = ( v.snmp_system_contact != null ? v.snmp_system_contact : "" )
      snmp_system_location               = ( v.snmp_system_location != null ? v.snmp_system_location : "" )
      snmp_trap_destinations             = ( v.snmp_trap_destinations != null ? v.snmp_trap_destinations : [] )
      snmp_user_1_auth_type              = ( v.snmp_user_1_auth_type != null ? v.snmp_user_1_auth_type : "SHA" )
      snmp_user_1_name                   = ( v.snmp_user_1_name != null ? v.snmp_user_1_name : "snmp_user1" )
      snmp_user_1_security_level         = ( v.snmp_user_1_security_level != null ? v.snmp_user_1_security_level : "AuthPriv" )
      snmp_user_2_auth_type              = ( v.snmp_user_2_auth_type != null ? v.snmp_user_2_auth_type : "SHA" )
      snmp_user_2_name                   = ( v.snmp_user_2_name != null ? v.snmp_user_2_name : "snmp_user2" )
      snmp_user_2_security_level         = ( v.snmp_user_2_security_level != null ? v.snmp_user_2_security_level : "AuthPriv" )
      sw_ctrl_description                = ( v.sw_ctrl_description != null ? v.sw_ctrl_description : "" )
      sw_ctrl_mac_aging_option           = ( v.sw_ctrl_mac_aging_option != null ? v.sw_ctrl_mac_aging_option : "Default" )
      sw_ctrl_mac_aging_time             = ( v.sw_ctrl_mac_aging_time != null ? v.sw_ctrl_mac_aging_time : 14500 )
      sw_ctrl_udld_message_interval      = ( v.sw_ctrl_udld_message_interval != null ? v.sw_ctrl_udld_message_interval : 15 )
      sw_ctrl_udld_recovery_action       = ( v.sw_ctrl_udld_recovery_action != null ? v.sw_ctrl_udld_recovery_action : "reset" )
      sw_ctrl_vlan_optimization          = ( v.sw_ctrl_vlan_optimization != null ? v.sw_ctrl_vlan_optimization : true )
      syslog_configure                   = ( v.syslog_configure != null ? v.syslog_configure : false )
      syslog_description                 = ( v.syslog_description != null ? v.syslog_description : "" )
      syslog_destinations                = ( v.syslog_destinations != null ? v.syslog_destinations : [] )
      syslog_severity                    = ( v.syslog_severity != null ? v.syslog_severity : "warning" )
      tags                               = ( v.tags != null ? v.tags : [] )
      vlan_description                   = ( v.vlan_description != null ? v.vlan_description : "" )
      vlan_native                        = ( v.vlan_native != null ? v.vlan_native : 1 )
      vlan_list                          = ( v.vlan_list != null ? v.vlan_list : "2-3" )
      vsan_a_description                 = ( v.vsan_a_description != null ? v.vsan_a_description : "" )
      vsan_b_description                 = ( v.vsan_b_description != null ? v.vsan_b_description : "" )
      vsan_enable_trunking               = ( v.vsan_enable_trunking != null ? v.vsan_enable_trunking : false )
      vsan_fabric_a                      = ( v.vsan_fabric_a != null ? v.vsan_fabric_a : 100 )
      vsan_fabric_a_fcoe                 = ( v.vsan_fabric_a_fcoe != null ? v.vsan_fabric_a_fcoe : "" )
      vsan_fabric_b                      = ( v.vsan_fabric_b != null ? v.vsan_fabric_b : 200 )
      vsan_fabric_b_fcoe                 = ( v.vsan_fabric_b_fcoe != null ? v.vsan_fabric_b_fcoe : "" )
    }
  }
}
