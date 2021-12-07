pipeline {
    agent any
    tools {
        terraform 'Terraform'
    } 
    stages {
        stage ("Checking out from Git") {
            steps {
                git branch: 'main', url: 'https://github.com/aazdiallo/AWS_Pipeline'
                // git branch: 'main', credentialsId: '42c441ce-ab1e-47fa-9026-0a3da66faec4', url: 'https://github.com/aazdiallo/AWS_Pipeline'
            }
        }
        stage ("terraform init") {
            steps {
                sh 'terraform init'
            }
        }
        stage ("terraform fmt") {
            steps {
                sh 'terraform fmt'
            }
        }
        stage ("terraform validate") {
            steps {
                sh 'terraform validate'
            }
        }
        stage ("terraform plan") {
            steps {
                sh 'terraform plan'
            }
        }
        stage ("terraform apply") {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }
}