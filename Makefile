create:
	@rm -rf
	@terrafile -f  env-prod/Terrafile
	@terraform init -backend-config=env-prod/prod-backend.tfvars
	@terraform apply -auto-approve -var-file=env-prod/prod.tfvars
destroy:
	@terrafile -f  env-prod/Terrafile
	@terraform init -backend-config=env-prod/prod-backend.tfvars
	@terraform destroy -auto-approve -var-file=env-prod/prod.tfvars