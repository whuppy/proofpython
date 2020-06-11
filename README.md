# mjs made his own branch off of this
# another dummy readme entry so I can commit to the new branch I just
# created and switched to
#### Cloud Architecture basics
# PYTHON API RUNNING AS CONTAINER
  
  
## 1. How to build a container image
Open a Terminal window (Mac, Linux) or CMD window (Windows) and place yourself
in the directory where the source code of your project is. Then, type the 
following command:

```shell
docker build . -t my_api:v1
```

where:

  - "." represents the current directory where you are
  - "-t" means you want to tag your container image with name
  - "my_api" is the main name of your container image
  - "v1" is the part of the tag name related to the container version

  
  
## 2. How to run a container image
Open a Terminal window (Mac, Linux) or CMD window (Windows) and type:

```shell
docker run -p 5000:5000 my_api:v1 -it api_container
```

where:

  - "my_api:v1" is the local image you want to run as a container
  - "api_container" is the name you want to assign to this container image 
    when it is run.
      
   
## 3. How to open a console inside a container 
Open a Terminal window (Mac, Linux) or CMD window (Windows) and type:

```shell
docker exec -it <container_id> ash
```
  
_**NOTE**_: _`ash` is the built-in shell in Alpine linux_.
