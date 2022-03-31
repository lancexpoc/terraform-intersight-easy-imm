#__________________________________________________________
#
# Variables for Terraform Cloud
#__________________________________________________________

# agent_pool        = "Richfield_Agents"
# tfc_email         = "tyscott@cisco.com"
terraform_version = "1.0.3"
tfc_organization  = "xpoc"
# tfc_organization  = "Cisco-Richfield-Lab"
vcs_repo          = "lancexpoc/terraform-intersight-easy-imm"
#vcs_repo          = "scotttyso/Asgard"

#__________________________________________________________
#
# Workspaces to Create
#__________________________________________________________

workspaces = {
  "Asgard_domain_profiles" = {
    auto_apply          = true
    description         = "Easy-Xpoc UCS Domain Profile."
    global_remote_state = true
    working_directory   = "modules/ucs_domain_profiles"
    workspace_type      = "domain"
  }
  "Asgard_policies" = {
    auto_apply        = true
    description       = "Easy-Xpoc UCS Policies."
    working_directory = "modules/policies"
    workspace_type    = "policies"
  }
  "Asgard_pools" = {
    auto_apply          = true
    description         = "Pools for the Easy-Xpoc."
    global_remote_state = true
    working_directory   = "modules/pools"
    workspace_type      = "pool"
  }
  "Asgard_profiles" = {
    auto_apply          = true
    description         = "Easy-Xpoc UCS Chassis and Server Profiles."
    global_remote_state = true
    working_directory   = "modules/ucs_profiles"
    workspace_type      = "profiles"
  }
}
