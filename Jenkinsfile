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
    }
}