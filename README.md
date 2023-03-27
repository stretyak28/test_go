# Description
Docker Multistage Builds was implemented to reduce the size of the final image

As an addition to the task
To automate the process, was created a Github Action build pipeline that triggers by the push to the master branch and run the build and push image to the Docker Hub repository

Deployment in Kubernetes was implemented through Helm Chart (Chart-test)

For the test task, was used a local Kubernetes Minikube cluster, and deployment was performed through a deploy.sh script

Screenshots with the result of script execution can be found in the result.pdf file