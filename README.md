Docker container for [BenBlog](https://github.com/benformosa/benblog).

    git clone https://github.com/benformosa/benblog-docker.git
    cd benblog-docker
    git submodule init
    git submodule update
    docker build -t benblog .
    docker run -p 8080:8080 benblog-docker 
