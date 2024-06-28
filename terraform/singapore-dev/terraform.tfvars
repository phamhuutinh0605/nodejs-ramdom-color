region             = "ap-southeast-1"
availability_zones = ["ap-southeast-1a", "ap-southeast-1c"]
cidr_block         = "10.0.0.0/16"
public_subnet_ips  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_ips = ["10.0.10.0/24", "10.0.20.0/24"]
ecr_repo_url       = "730335574156.dkr.ecr.ap-southeast-1.amazonaws.com/nodejs-random-color-ecr:8d5b883d-47b4-4c0a-b4bd-37fd7c70cb4a"
