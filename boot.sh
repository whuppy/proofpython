#!/usr/bin/env ash

# NOTE:
# -----
# Due to the limited load balancing algorithm used by Gunicorn, it is not
# possible to use more than one worker process while using this web server.
#
# With containers the problem is less evident, but, in development time, no
# more than one worker process runs at a time.

# Now, let's set the environment variables Gurnicorn, the WSGI HTTP Server
# for UNIX.

MODULE=app
APP=APP
WORKERS=1
WORKERTYPE=sync
NAME=PythonAPI
PORT=5000

gunicorn $1 ${MODULE}:${APP}        \
         --name $NAME               \
         --bind=0.0.0.0:$PORT       \
         --workers $WORKERS         \
         --worker-class $WORKERTYPE

