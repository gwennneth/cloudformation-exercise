# cloudformation-exercise

Folder structure:
- /docs contain the instructions from AWS Academy Cloud Operations Activity 5
- /lambda contains the folders for lambda functions and zip files for lambda layers
- /src contains the source code for the LAMP server deployed on EC2
- /templates contains all the CloudFormation templates

Things to note:
- Requires AWS_ROLE_TO_ASSUME as repository secret and AWS_REGION as repository variable
- Can set DBPASSWORD in repository secret
- Once the LAMP stack is created on the CloudFormation console, cancel the workflow run to save on Github Actions minutes instead of waiting for the stack to complete
- Since the workflow is run based on changes made to the files, to redeploy the whole LAMP stack (eg. after deleting it), remove the /src, /lambda, and /templates folder from the repository, push the changes, then add the folders back again
- Again since it's run on changes, pushing ^ those folders on the first commit won't work either oops
- Disable EventBridge rule if you don't want to receive emails anymore (default is set to every 2 minutes)

Things fixed:
- have to allow 0.0.0.0/0 on port 3306 for EC2 because MariaDB is running on EC2, and the SSM Parameter stores the public IP of the EC2 so the server files is connecting to itself by going out of the internet gateway and back in again, using its public IP, so either allow 0.0.0.0/0 or change the SSM Parameter to 'localhost' (more secure lol)
- removed the installation of aws cli 2 in EC2 cfn-init so that cfn-hup works

Things not done:
- gave IAM roles god privileges basically ooPs
- oh i just realised i hvnt do things like cfn-lint for the templates and pylint for the lambda functions yet ok not impt yEs
