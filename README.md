calibre-server-docker
=====================

Docker container with calibre preinstalled

Getting the image
-----------------
You can pull it from ``https://index.docker.io/u/regueiro/calibre-server/`` or clone this repo and build it.

All you need is the Dockerfile.


Using your library
------------------

This container exposes the volume **/opt/calibre/server** and the port **8080**


To allow calibre to run **your library** you have to **mount it as a volume** with ``-v /your/library/location:/opt/calibre/library``


Running the container
------------------------

    docker run -p 80:8080 -v /media/calibre/books:/opt/calibre/library -name calibre regueiro/calibre

From now on:

    docker start calibre


You can pass arguments to calibre-server:

    docker run -p 80:8080 -v /media/calibre/books:/opt/calibre/library -name calibre regueiro/calibre --username user --password pass
