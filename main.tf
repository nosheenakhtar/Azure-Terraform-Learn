terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.8.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "your azure subscription id"
  tenant_id = "your terraform application tenant id"  #(go to Azure Active Directory then go to app registration create application "Terraform" then click on it here you find "Directory ID" or "Tenant Id" copy that id and paste in configurationfile)   
  client_id = "your application id"  #(alrady have terraform application so go on applications and click on terraform application here you can easy find client_id or application_id)
  client_secret = "client secret or password" #(How do you get the client secret? it's like a password follow these step 1.go on certificates and secrets as part of your terraform application object here you can create a new client secret and give it a simple name and check expiry of six months. Please copy this right now onto a secure location because once you navigate away from this page, you will not be able to get the value of the secret.But you can always go ahead and create a new client secret. this is a client secret value or some kind of password copy and paste in configuration file) 
  features { 
  }
  
}
