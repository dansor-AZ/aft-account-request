module "account_request_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "dansor+TerraAFT@amazon.com"
    AccountName               = "dansor-TerraAFT"
    ManagedOrganizationalUnit = "Sandbox" 
    SSOUserEmail              = "dansor+TerraAFT@amazon.com"
    SSOUserFirstName          = "dansor-TerraAFT"
    SSOUserLastName           = "soriano"
  }

  account_tags = {
    "ABC:Owner"       = "dansor-TerraAFT"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "test"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT)"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
    custom3 = "c"
  }

  account_customizations_name = "SANDBOX"
}
