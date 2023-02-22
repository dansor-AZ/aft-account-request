module "account_request_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "daniel+testing-aft-account@amazon.com"
    AccountName               = "daniel-test-aft-account"
    ManagedOrganizationalUnit = "Sandbox" 
    SSOUserEmail              = "daniel+testing-aft-account@amazon.com"
    SSOUserFirstName          = "daniel-test-aft-account"
    SSOUserLastName           = "soriano"
  }

  account_tags = {
    "ABC:Owner"       = "daniel-test-aft-account"
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
  }

  account_customizations_name = "SANDBOX"
}

module "account_request_02" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "daniel+testing-aft-account2@amazon.com"
    AccountName               = "daniel-test-aft-account"
    ManagedOrganizationalUnit = "Sandbox" 
    SSOUserEmail              = "daniel+testing-aft-account2@amazon.com"
    SSOUserFirstName          = "daniel-test-aft-account2"
    SSOUserLastName           = "soriano"
  }

  account_tags = {
    "ABC:Owner"       = "daniel-test-aft-account2"
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
  }

  account_customizations_name = "SANDBOX"
}

