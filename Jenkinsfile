pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t jenkins-ecr:v1.0.${BUILD_ID} .'
            }
        }
        stage('Upload Image to ECR') {
            steps {
               sh '''
                    aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 730335574156.dkr.ecr.ap-southeast-1.amazonaws.com
                    docker tag jenkins-ecr:v1.0.${BUILD_ID} 730335574156.dkr.ecr.ap-southeast-1.amazonaws.com/jenkins-ecr:v1.0.${BUILD_ID} 
                    docker push 730335574156.dkr.ecr.ap-southeast-1.amazonaws.com/jenkins-ecr:v1.0.${BUILD_ID} 
               '''
            }
        }
    }
}
