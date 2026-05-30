# learn-terraform


What is Terraform ?
    Terraform is one of the famous product from HASHICORP!!!
    Terraform is one of the most famous infrastructure as a code tool which supports 6000+ providers
    There is no near close competition for terraform ( Pulumi/OpenTofu )
    Terraform is cloud agnoistic.
    Terraform is openSource! Means code is open

Hashicorp was acquired by IBM!!!!

    With terraform, infrastucture provisioning can be managed via code and this enables us in doing less to no manual actions.
    With this, we develop the code once & can use it multiple times and this enables consistency across the board !!!!

Terraform has 2 editions:
    1) OpenSource Edition ( Free )
    2) Terraform Enterprise ( Support & Workspaces : Where we can store the state and execution happens on the hashicorp manged infra )

What language terraform uses ?
    HCL : Hashicorp Language ( This is a declarative language ) 

How terraform files look like ?
    Terraform only recognizes the files that has *.tf or *.tfvars or *.auto.tfvars

With terraform CDK, developers can provision infrastructure using the language of their choice:
    https://developer.hashicorp.com/terraform/cdktf

How a terraform resource block looks like?
    resource "ec2_instance"  "that" {

    }

Whenever you use terraform, here are the 4 commands that you'd be using the most:   
    
        $ terraform init  ( This downloads all the needed provider info based on the code that you wrote and also initializes the repo )
        $ terraform plan ( Plan shows what you terraform code is going to do, before you really create something, we run a plan to see what the code does and we update our code based on the plan's output )
        $ terraform apply ( This creates the resources shown on the plan )

        Keep in mind, apply can create / destroy / update the resource and it all depends on what you're doing

        $ terraform destroy ( This 100% destros the infrastructure created by the code )

To run terraform commands, we need to have terraform installed:
```
    sudo yum install -y yum-utils
    sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
    sudo yum -y install terraform
```

Do we need to provider provider info all the time?
    Yes, with this only terraform comes to know from where it has to download the plugins mentioned in the code.
    We can also mentioned the provider version to download against.
    If you don't mention the provider version, it downloads the latest
