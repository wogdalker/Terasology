FROM gitpod/workspace-full-vnc

RUN sudo apt-get update && \
    sudo apt-get install --no-install-recommends -y libasound2-plugins libopenal1 zenity libopenal-dev libsndfile1-dev && \
    sudo rm -rf /var/lib/apt/lists/* && \
    echo "drivers=pulse" >> /etc/openal/alsoft.conf
