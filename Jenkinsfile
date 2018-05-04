node {
    stage('Checkout') {
        checkout scm
    }

    stage('Build Image'){
        sh "docker build -t dvitali/inlatex-bot:latest ."
    }

    stage('Push Image') {
        def BUILD_VERSION = "sh cat Cargo.toml | grep package -A 5 | grep version | awk -F ' = ' '{print \$2}' | sed 's/\"//g'"
        withCredentials([usernamePassword(
            credentialsId: "docker-hub-dvitali",
            usernameVariable: "USER",
            passwordVariable: "PASS"
        )]) {
            sh "docker login -u $USER -p $PASS"
        }

        sh "docker tag dvitali/inlatex-bot:latest dvitali/inlatex-bot:$BUILD_NUMBER"
        
        sh "docker push dvitali/inlatex-bot:latest"
        sh "docker push dvitali/inlatex-bot:$BUILD_NUMBER"
    }
}
