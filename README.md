Docker container for [BenBlog](https://github.com/benformosa/benblog).

Build with `Dockerfile` for x86_64 architecture. Currently untested.
Build with `Dockerfile-rpi` for Rasperry Pi. Tested with [Hypriot](http://hypriot.com).

Usage:
    git clone https://github.com/benformosa/benblog-docker.git
    cd benblog-docker
    git submodule init
    git submodule update
    docker build --file=Dockerfile --tag=benblog .
    docker run -p 8080:8080 benblog
