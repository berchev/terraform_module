# terraform_module
Content of this repo is a guideline on HOW to use **module** in terraform. 

**Note that all this is tested on Ubuntu OS**

## PreRequirements
- You need to have Terraform tool installed

## Repo content
- `main.tf` - Terraform main configuration file
- `module/module.tf` - Terraform module file

## Description
This project will create 5 resources: `opel, citroen, skoda, VW, toyota`. All resources, which need to be created, are described in module file `module/module.tf`. 

## Instructions on how to install **Terraform**
- Download required package from [here](https://www.terraform.io/downloads.html)
- Change to directory where package is download. For example: `cd $HOME/Downloads/` 
- Type on your terminal: `unzip <Downloaded_TF_Package>`
- Type on your terminal: `sudo mv terraform /usr/local/bin/`
- Check whether Terraform is available with:  `terraform --version` command


## Instructions HOW to prepare your PC environment for this **Terraform project**
- Download the repo **berchev/terraform_module**: `git clone https://github.com/berchev/terraform_module.git`
- Change to terraform_module: `cd terraform_module`
- Type in your terminal `terraform init` in order to be downloaded required providers
- Type in your terminal `terraform plan` in order to see the changes which terraform is going to be made
- Type in your terminal `terraform apply` execute changes bases on our code(main.tf)

## Expected results

Sample output: 
```
Apply complete! Resources: 5 added, 0 changed, 0 destroyed.

Outputs:

brands = opel, citroen, skoda, VW, toyota


```
## Remove all created with Terraform
- Type in your terminal `terraform destroy` in order to delete the all created resources
