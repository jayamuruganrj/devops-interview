## DevOps Engineer - technical interview

### Solutio Provided
- There are 3 pipeline configured for the given task along with pre-requisite azure resources

#### Pipeline Pre-Requisite:
- GitHub Service Connection
- ARM service Connection
- Service priniciple for ARM service connection
- API registered key should be updated 

Pipeline Name     | Second Header
-------------     | -------------
app-CI-pipeline   | Build Pipeline
Dev_Release Cell  | Deployment Pipeline
Infra-pipeline    | Terraform Pipeline [Web APP]

#### Azure Resources - Pre-Requisite:
- Azure Resource Group
- App Registration / Service Prinicple
| Resource Name  | 
|-------------   | 
|Storage Acccount | 
|KeyVault    | 
|Azure Web App | 

- Deployed application reachable @ https://weatherman8870.azurewebsites.net/
- Please refer the relevant screenshot [here][1]
[1] .\devops-interview\.ci\screenshot "here"

### The task
Your task is to automate the deployment and provisioning of resources that host the app provided.
It should be hosted in a highly available and scalable web application hosted in **Azure**. A free account can be created [here](https://azure.microsoft.com/en-gb/free/)
for Azure.  You should not have to spend any money to complete this exercise. 

Your CI job should:
- Investigate and understand which values need to be swapped as part of CICD pipeline. This needs to be done for the application to work :)  
- Run when a feature branch is pushed to Github (you should fork this repository to your Github account). 
- Deploy to a target environment when the job is successful.
- A clean and minimal working infrastructure is preferred. 
- Consider security.
- Consider tests at all levels. 

### Submission
- Create a public Github repository and fork the Brady repository into it. 
- Your solution should be pushed here.  Please do not submit PRs back to the main repository.
- Include a README which desribes how the CI pipeline and any IAC works
- A link to the site that has been deployed. 

### Bonus Points
- Commit often - would rather see a history of trial and error than a single push. 
- Versioning of the deployment
- Write some tests for code and integrate into pipeline