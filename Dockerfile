# We start the Dockerfile using a base image
# The keyword is "FROM" and then followed by image name which you want to pull from Docker Hub
# In our example, we want import the python image.
# So we write 'python' for the image name and 'latest' is the tag of the version.
FROM python:latest

# Now we need to copy our python file into the image we just pulled
# We use the keyword 'COPY' to do that
# Followed by the name of file we want to copy
# The second parameter '/' is the path where to put the file on the image.
# This '/' indicates that we will copy our file to the root directory of the image
COPY main.py /

# Lastly, we define the command to launch when we are going to run the image.
# The keyword which we use is 'CMD' to do that.
# The following command will execute "python ./main.py" from the image
CMD [ "python", "./main.py" ]