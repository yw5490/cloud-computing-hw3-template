for stack in \
#   cfn-photoalbum-api \
#   cfn-photoalbum-iam \
#   cfn-photoalbum-parameters \
  cfn-photoalbum-functions \
  cfn-photoalbum-s3
do
  echo "Deleting $stack…"
  aws cloudformation delete-stack --stack-name $stack
  aws cloudformation wait stack-delete-complete --stack-name $stack
done

echo "All CloudFormation stacks removed."
