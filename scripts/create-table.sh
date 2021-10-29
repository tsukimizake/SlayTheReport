aws --endpoint-url=http://localhost:8000 dynamodb create-table --table-name SlayTheReport \
  --attribute-definitions \
    AttributeName=author,AttributeType=S \
    AttributeName=runid,AttributeType=S \
  --key-schema \
      AttributeName=author,KeyType=HASH \
      AttributeName=runid,KeyType=RANGE \
  --provisioned-throughput ReadCapacityUnits=10,WriteCapacityUnits=5
