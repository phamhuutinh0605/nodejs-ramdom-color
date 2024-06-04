pipeline {
    agent any
    stages {
        // stage('Checkout') {
        //     steps {
        //         git 'https://github.com/hoanglinhdigital/nodejs-random-color.git'
        //     }
        // }

        stage('Build') {
            steps {
                sh 'docker build -t nodejs-random-color:ver-${BUILD_ID} .'
            }
        }
        stage('Upload image to ECR') {
            steps {
                sh 'aws configure list'
                sh 'aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 730335574156.dkr.ecr.ap-southeast-1.amazonaws.com'
                sh 'docker tag terraform-jenkins-ecr 730335574156.dkr.ecr.ap-southeast-1.amazonaws.com/terraform-jenkins-ecr:ver-${BUILD_ID}'
                sh 'docker push 730335574156.dkr.ecr.ap-southeast-1.amazonaws.com/terraform-jenkins-ecr:ver-${BUILD_ID}'
            }
        }
    }
}
