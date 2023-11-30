    pipeline {
        agent {
            docker {
                image 'golang:1.15-alpine'
                args '-p 7000:7000'
            }
        }
        stages {
            stage('lint-dockerfile') {
                steps {
                    sh 'sudo apt-get install shellcheck wget -y  '
                    sh 'wget https://github.com/hadolint/hadolint/releases/download/v2.12.0/hadolint-Linux-x86_64'
                    sh 'sudo mv hadolint-Linux-x86_64 /usr/local/bin/hadolint'
                    sh 'sudo chmod +x /lusr/local/bin/hadolint'
                }
            }
            
     }
    




  
  
