module "Projet1" {

  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "dubus.antoine.projet1@free.fr"
    AccountName               = "Projet1"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "antoine.dubus@sfr.fr"
    SSOUserFirstName          = "Dubus"
    SSOUserLastName           = "Antoine"
  }

  account_tags = {
    "Projet" = "Projet 1"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
  #
}
