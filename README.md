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

Things not fixed:
- cfn-hup not working :( so i cant update any files on the EC2 instance :(((((
- ^ it's detecting the change, but the action that's supp to run is exiting with code 1
- ^ running the cfn-init action command manually just keeps running man and never exits iDk whAt is haPpEning!
- um i actually dk y i hv to allow 0.0.0.0/0 on the MySQL port for the EC2 security group for the apache application to connect to the database lol (tried restricting access to only the security group itself, or the VPC's CIDR n boTh diDnt woRk?!?!? i dun gedDit :)) (like i get that it's not calling localhost but it's own public ip for the database, so the request is going to idk whr b4 resolving to send back to itself, buT y wLdnt iTs own souRce woRk xia whAt)

Things not done:
- gave IAM roles god privileges basically ooPs
- oh i just realised i hvnt do things like cfn-lint for the templates and pylint for the lambda functions yet ok not impt yEs
