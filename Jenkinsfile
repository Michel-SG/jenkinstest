node {
    stage('Clone') {
        git branch: 'main', credentialsId: '8f0c0a82-c905-4716-8564-335da64839ce', url: 'git@gitlab.com:sadeu/jenkinstest.git'
    }
    stage('Build') {
        sh 'javac Main.java'
    }
    stage('Run') {
        sh 'java Main'
    }
}