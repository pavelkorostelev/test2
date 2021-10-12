pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Running Building..'
                sh './gradle build --no-daemon'
                archiveArtifacts artifacts: '/root/'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
