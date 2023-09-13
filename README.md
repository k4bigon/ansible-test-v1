# aws-ansible-test Instructions
Short testing for a terraform deployment of an ansible control node.

We're looking to deploy an EC2 instance in AWS with Ansible installed and follow Terraform security and DevOps best practices.

Per best practices, we're starting with Environment variables.

use the `export` command on MacOS/Linux or `$Env:<variable-name> = "<new-value>"` in Powershell

% export AWS_ACCESS_KEY_ID="anaccesskey"
% export AWS_SECRET_ACCESS_KEY="asecretkey"
% export AWS_REGION="us-west-2"

## Backend Configuration

Our backend is stored in S3 in a bucket called kabigonansibletestbucket/state/

This avoids storing our secrets in a local state file where a bad actor can get their grubby mitts on em.

### Do not store secrets in plain text

e.g. 

username = root
password = devops123

all CI/CD platforms store a copy of these credents.

### Store terraform state in backend. Not local TF state, as this will expose your secrets.
