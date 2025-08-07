import boto3

def lambda_handler(event, context):
    org = boto3.client('organizations')
    ou_name = event['ou_name']
    parent_id = event['parent_id']
    response = org.create_organizational_unit(Name=ou_name, ParentId=parent_id)
    return response
