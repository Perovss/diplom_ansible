#Global Vars
aws_cluster_name = "k8s-diploma"

#Set domain which look at cluster ELB
project_domain = "diplom.ivanadminekb.ru"
k8s_api_subdomain = "k8s-api"

#VPC Vars
aws_vpc_cidr_block       = "10.250.192.0/18"
aws_cidr_subnets_private = ["10.250.192.0/24","10.250.193.0/24"]
aws_cidr_subnets_public  = ["10.250.224.0/24","10.250.225.0/24"]

# single AZ deployment
#aws_cidr_subnets_private = ["10.250.192.0/20"]
#aws_cidr_subnets_public  = ["10.250.224.0/20"]

# 3+ AZ deployment
#aws_cidr_subnets_private = ["10.250.192.0/24","10.250.193.0/24","10.250.194.0/24","10.250.195.0/24"]
#aws_cidr_subnets_public  = ["10.250.224.0/24","10.250.225.0/24","10.250.226.0/24","10.250.227.0/24"]

#Bastion Host
aws_bastion_num  = 1
aws_bastion_size = "t3.small"

#Kubernetes Cluster
aws_kube_master_num       = 1
aws_kube_master_size      = "t3.medium"
aws_kube_master_disk_size = 50

aws_etcd_num       = 1
aws_etcd_size      = "t3.medium"
aws_etcd_disk_size = 50

aws_kube_worker_num       = 2
aws_kube_worker_size      = "t3.medium"
aws_kube_worker_disk_size = 50

#Settings AWS ELB
aws_elb_api_port    = 6443
k8s_secure_api_port = 6443

default_tags = {
   Env = "stage"
   Product = "kubernetes"
}

inventory_file = "../../../inventory/hosts"
