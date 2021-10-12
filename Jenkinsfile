pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Running Building..'
                docker exec -it a6390a1d3e0177391069633bdc36d6828c92b3847fa9ff02759ac83779fd8da2 bash './gradle build --no-daemon'
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
