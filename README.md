# lmu_data_stream
A project to implement an AWS data streaming solution to S3

## Deployment
### Generate .zip lambda package to deploy with terraform 
```bash
cd lambda-lmu-consumer
./lambda_generate_package.sh
```

### Launch the AWS stack
To verify the execution plan :
```
terraform init 
terraform plan 
```

To deploy the stack : 
```
terraform deploy
```

To destroy the stack : 
```
terraform destroy
```

## Author

[@laurentmartineau](https://github.com/owl2)