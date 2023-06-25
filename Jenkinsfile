pipeline {
    agent none
stages {

stage('Terraform init'){
agent { label 'JenkinsAgent-01' }
steps{
sh label: '',script: 'terraform init'}
}

stage('Terraform fmt'){
agent { label 'JenkinsAgent-01' }
steps{
sh label: '',script: 'terraform init'}
}

stage('Terraform plan'){
agent { label 'JenkinsAgent-01' }
steps{
sh label: '',script: 'terraform plan'}
}


}}
