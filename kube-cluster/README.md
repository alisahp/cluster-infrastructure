# Google Cloud Platform Kubernetes Cluster Terraform Module
Use this deployment to easily deploy a Kubernetes cluster on Google Cloud Platform (GCP)'s Google Kubernetes Engine (GKE).

## In order to do so we need to have 4 files:

* ```kubecluster-deployment.tf``` -- contains the definition of what we want to achieve

* ```variables.tf``` -- contains the variables definition.

* ```config.tfvars``` -- contains the values for variables.

* ```service_account_key.json``` -- contains the service account key.


### Create service account key

* You have to create ```service_account_key.json``` inside the  ```/root/Terraform-project/Kube-cluster-deployment``` before running which would contain your service ```Account Key```  file.

* This contains your authentication required for Terraform to talk to the Google API.

You can get it under 
```
Google Cloud Platform -> IAM & admin -> Service accounts -> Create service account -> attach role "Kubernetes Engine Admin" -> Create Key.
```
* For the Key type field choose JSON format. Put the content of the downloaded file into "service_account_key.json" right there where your all deployment files are located which you use them to create Kubernetes Engine Cluster.


### Create config.tfvars file

Create config.tfvars file with following content: 

```
cluster_name            =    "example-name"
node_count              =    "2"                                
cpath                   =    "PATH/service_account_key.json"    # Path where ur service account key is located
project                 =    "example-240119"                   # Project_id
region                  =    "us-central1"                      # Region
node_name               =    "example"
```

--------------------------------------------------------------------------------------------------------------

  
### Variables  

```variables.tf``` holds the definition of the elements that can be configured in your
deployment script.


From now on every time you run a ```terraform``` commands ```{plan|apply|destroy|...}``` you will need to provide the required variables. Without further information ```terraform``` will enter an interactive mode requesting each variables one by one at the prompt.

If you do not want to set these values on every run you can create a file called ```config.tfvars``` which we already did.

### Architecture

Now that we know what we want to build and also how we want to parametrize our script we are ready to build the ```kubecluster-deployment.tf```  The code snippets below are extracted from this file.

## USAGE 

### Initialize working directory.

The first command that should be run after writing a new Terraform configuration is the terraform init command in order to initialize a working directory containing Terraform configuration files. It is safe to run this command multiple times.

```
terraform init
```

### Plan before Apply

We need to plan all changes before applying it. That`s why we need to run the following command:

```terraform plan -var-file=config.tfvars```   Displays what would be executed

### Deploy the changes by applying

For applying all changes we need to run the following command:

```terraform apply  -var-file=config.tfvars```    Applies the changes

Test the deploy.

When the ```terraform apply``` command completes, use the ```Google Cloud console```, you should see the new ```Kubernetes Engine``` created one ```Cluster``` with 2 ```nodes```.

### Destroy all the changes

To destroy everything please run the following command:

```terraform destroy -var-file=config.tfvars```  Destroy the changes.