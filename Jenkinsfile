pipeline {
    agent any
    stages {
        // stage('Checkout') {
        //     steps {
        //         git 'https://github.com/phamhuutinh0605/nodejs-ramdom-color.git'
        //     }
        // }

        stage('Build') {
            steps {
               sh '''
                    aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 730335574156.dkr.ecr.ap-southeast-1.amazonaws.com
                    docker tag jenkins-ecr:latest 730335574156.dkr.ecr.ap-southeast-1.amazonaws.com/jenkins-ecr:latest
                    docker push 730335574156.dkr.ecr.ap-southeast-1.amazonaws.com/jenkins-ecr:latest
               '''
            }
        }
        stage('Upload image to ECR') {
            steps {
            }
        }
    }
}
