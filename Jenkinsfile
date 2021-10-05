pipeline {
    agent any
    stages {
        stage("Compile") {
            steps {
                sh "./gradlew compileJava"
            }
        }
        stage("Unit test") {
            steps {
                sh "./gradlew test"
            }
        }
        stage("Docker build") {
            steps {
                sh "docker build -t ericmacio/calculator ."
            }
        }
        stage("Deploy to staging") {
            steps {
                sh "docker run -d --rm -p 8765:3000 --name calculator ericmacio/calculator"
            }
        }
        stage("Acceptance test") {
            steps {
                sleep 15
                sh "./acceptance_test.sh"
            }
        }
    }
    post {
        always {
            sh "docker stop calculator"
        }
    }
}