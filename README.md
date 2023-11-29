# cloudformation-exercise

Folder structure:
- /docs contain the instructions from AWS Academy Cloud Operations
- /lambda contains the folders for lambda functions and zip files for lambda layers
- /src contains the source code for the LAMP server deployed on EC2
- /templates contains all the CloudFormation templates

Things to note:
- Requires AWS_ROLE_TO_ASSUME as repository secret and AWS_REGION as repository variable
- Can set DBPASSWORD in repository secret
- Once the LAMP stack is created on the CloudFormation console, cancel the workflow run to save on Github Actions minutes
- Since the workflow is run based on changes made to the files, to redeploy the whole LAMP stack, remove the /src, /lambda, and /templates folder from the repository, push the changes, then add the folders back again
- cfn-hup not currently working :(