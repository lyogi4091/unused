node {
    stage('SCM checkout'){
        git 'http://localhost:7990/scm/test/test_repo.git'
    }
    stage('Building docker image'){
        sh 'sudo docker build -t ubuntu_image_remote http://localhost:7990/scm/test/test_repo.git'
    }
    stage('Running the testbuild image'){
        sh 'sudo docker run -it -d --name testcontainer_remote -v /home/user/project3:/opt ubuntu_image_remote'
    }
    //Compiling the code upon the docker container
    stage('Compiling the source code on docker container'){
        sh 'sudo docker exec testcontainer_remote gcc -o /opt /opt/file.c'
    }
    stage('Output'){
        sh 'sudo docker exec testcontainer_remote ./opt/yogesh'
    }
    stage('Showcasing the script before autopep8'){
        sh 'sudo docker exec testcontainer_remote cat /opt/python1.py'
    }
    stage('formatting the code on docker container'){
        sh 'sudo docker exec testcontainer_remote autopep8 -i python1.py /opt/python1.py'
    }
    stage('Code formatted'){
        sh 'sudo docker exec testcontainer_remote cat /opt/python1.py'
    }
}
