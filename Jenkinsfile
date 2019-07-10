node {
    stage('SCM'){
        git 'https://github.com/lyogi4091/project1.git'
    stage('Applying condition'){
        try {
            sh 'pycodestyle --ignore=E501 python.py';
            } catch(x) {
                println "The code is being formatted";
                sh 'autopep8 -i https://github.com/lyogi4091/unused.git';
                sh 'sudo docker build -t ubuntu_image_remotely https://github.com/lyogi4091/unused.git';
                sh 'sudo docker run -it -d --name testcontainer_remote -v /root/folder1:/opt ubuntu_image_remotely';
                sh 'sudo docker exec testcontainer_remote gcc -o /opt/yogesh /opt/file.c';
                sh 'sudo docker exec testcontainer_remote ./opt/yogesh'
                }
            echo 'The code is in good format'
            }
    }
}
