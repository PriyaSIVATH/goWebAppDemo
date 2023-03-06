pipeline {
    agent {
        //dockerfile true
        docker { image 'priyasivath/jenkins-ubuntu-agent:dockerfile.0.4' }
    }
    stages {
        stage('scm') {
            steps {
               checkout scm 
                }
            }
        stage('Build') {
            steps {
                sh ''' git --version
                        go build ./...'''
            }
        }
        stage('archive') {
             steps {
                archiveArtifacts(artifacts: '**/*', followSymlinks: false)
      }
    }
}

}
