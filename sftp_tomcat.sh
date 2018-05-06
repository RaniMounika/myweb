mvn target/myweb*.war target/myweb.war
sftp ec2-user@35.178.160.225  <<EOF
rename /opt/tomcat/webapps/myweb.war /tmp/myweb.war.back
rm /opt/tomcat/webapps/myweb*
put target/myweb.war /opt/tomcat/webapps/
bye
EOF
ssh ec2-user@35.178.160.225 /opt/tomcat/bin/.shutdown.sh
ssh ec2-user@35.178.160.225 /opt/tomcat/bin/.startup.sh