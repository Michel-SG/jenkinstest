/*Import share Library */
@Library("michel-share-library")_

pipeline {
     environment {
       IMAGE_NAME = "alpinehelloworld"
       IMAGE_TAG = "latest"
       PORT = 5000
     }
     agent none
     stages {
         stage('Build image') {
             agent any
             steps {
                script {
                  sh 'docker build -t ari19922_$IMAGE_NAME:$IMAGE_TAG .'
                }
             }
        }
        stage('Run build image') {
            agent any
            steps {
               script {
                 sh '''
                    docker run --name $IMAGE_NAME -d -p 80:5000 -e PORT=$PORT ari19922_$IMAGE_NAME:$IMAGE_TAG
                    sleep 5
                 '''
               }
            }
       }
       stage('Test image') {
           agent any
           steps {
              script {
                sh '''
                    curl http://172.17.0.1:80 | grep -q "Hello world!"
                '''
              }
           }
      }
      stage('Clean Container') {
          agent any
          steps {
             script {
               sh '''
                 docker stop $IMAGE_NAME
                 docker rm -f $IMAGE_NAME
               '''
             }
        }
     }
     
  }
  post {
       always{
        script{
            slackNotifier currentBuild.result
        }
       }   
    }
}
