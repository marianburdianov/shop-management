pipeline {
    agent any
    stages {
        stage("Read from Maven POM") {
            steps{
                script {
                    projectArtifactId = readMavenPom().getArtifactId()
                    projectVersion = readMavenPom().getModelVersion()
                }
                echo "Building ${projectArtifactId}:${projectVersion}"
            }
        }
        stage("Test") {
            steps {
                bat "mvn -version"
                bat "mvn test"
            }
        }
        stage("Build JAR file") {
            steps {
                bat "mvn install -Dmaven.test.skip=true"
            }
        }
        stage("Newman Test") {
            steps {
                echo "Starting Newman Test"
//                 bat "newman run https://www.getpostman.com/collections/4ed4489c4178ef86bfe4"
                   sh 'docker run -t postman/newman_ubuntu1404 run https://www.getpostman.com/collections/4ed4489c4178ef86bfe4'
            }
        }
    }
}





// pipeline {
//     agent {
//         docker {
//             image 'maven:docker-jenkins-integration'
//             args '-v /root/.m2:/root/.m2'
//         }
//     }
//     stages {
//         stage('Build') {
//             steps {
//                 sh 'mvn -B -DskipTests clean package'
//             }
//         }
//         stage('Test') {
//             steps {
//                 sh 'mvn test'
//             }
//             post {
//                 always {
//                     junit 'target/surefire-reports/*.xml'
//                 }
//             }
//         }
//     }
// }