node {
    // stage('Clone') {
    //     git branch: 'main', credentialsId: '8f0c0a82-c905-4716-8564-335da64839ce', url: 'git@gitlab.com:sadeu/jenkinstest.git'
    // }
    stage('Clone') {
        git branch: 'main', url: 'https://github.com/Michel-SG/JenkinsTest.git'
    }
    stage('Build') {
        sh 'javac Main.java'
    }
    stage('Run') {
        sh 'java Main'
    }
    stage('Run docker') {
        sh 'docker build -t myapp .'
    }
    stage('Check docker images') {
        sh 'docker images'
    }
    stage('Run Trivy') {
        sh 'trivy --severity HIGH,CRITICAL --no-progress image --format table -o trivy-scan-report.txt myapp'
    }

} 