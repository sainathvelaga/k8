To Create the S3 bucket
aws s3api create-bucket --bucket sainathdevops-state --region us-east-1

Enable Versioning on the S3 Bucket
aws s3api put-bucket-versioning --bucket sainathdevops-state --versioning-configuration Status=Enabled

Create a DynamoDB Table for State Locking
aws dynamodb create-table \
    --table-name terraform-lock-table \
    --attribute-definitions AttributeName=LockID,AttributeType=S \
    --key-schema AttributeName=LockID,KeyType=HASH \
    --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5