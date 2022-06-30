


















pipiline {
   // agent {
        //docker {
            //image "ruby"
            //args "--link selenium_server"
       // }
   // }
    stages {
        stage("Build") {
            steps {   
              sh "bundle install'"
            }
        }    
        stage("Run Testes") {
            steps {
             sh "bundle exec cucumber -t @smoke"
            }
        }
    }
}


