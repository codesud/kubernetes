create:
	@rm -rf
	@terrafile -f  env-dev/Terrafile
	@terraform init -backend-config=env-dev/dev-backend.tfvars
	@terraform apply -auto-approve -var-file=env-dev/dev.tfvars
destroy:
	@terrafile -f  env-dev/Terrafile
	@terraform init -backend-config=env-dev/dev-backend.tfvars
	@terraform destroy -auto-approve -var-file=env-dev/dev.tfvars