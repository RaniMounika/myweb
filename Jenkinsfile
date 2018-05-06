node{
    stage('GIT'){
        project = 'https://rajesh212@bitbucket.org/rajesh212/myweb.git'
        git url: "${project}"
    }
    stage('build'){
        def myHome = tool name: 'maven', type: 'maven'
        sh "${myHome}/bin/mvn clean package"
    }
    stage('TOMCAT'){
        sh 'chmod 777 sftp_tomcat.sh'
        sh './sftp_tomcat.sh'
    }
}