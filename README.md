### CircleCI Badge for goodrjk/MicroServices_Project   
[![goodrjk](https://circleci.com/gh/goodrjk/MicroServices_Project.svg?style=svg)](https://circleci.com/gh/goodrjk/MicroServices_Project/?branch=main)



### Project Summary

Using a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several factors, build a Docker image to allow for starting the app and obtaining house price predictions running both locally and in a Kubernetes cluster.
This requires building and testing the environment, defining and building the Docker image, uploading the new image to Docker, configuring Kubernetes and deploying the container to the cluster. 

Github 		https://github.com/goodrjk/MicroServices_Project

CircleCI 	https://app.circleci.com/pipelines/github/goodrjk/MicroServices_Project?filter=all

DockerHub	https://hub.docker.com/repository/docker/goodrjk/udacity_4

### Required files for submission:

|  File                 |    Purpose                                                                   |
| ------------------    | --------------------------------------------------------------------------   |
| README.me             | This file                                                                    |
| Dockerfile            | Configuration file to build and test Docker image                            |
| Makefile              | Configuration file to install and lint                                       | 
| app.py                | Boston Real Estate Prediction Application                                    |
| make_prediction.sh    | Bash shell script to call app with test data                                 |
| run_docker.sh         | Script to build docker container and launch app                              |
| upload_docker.sh      | Script to upload Docker image to goodrjk/udacity_4:firstimage                |
| run_kubernetes.sh     | Script to run                                                                |
| docker_out.txt        | Output from application window and prediction window running local docker    |
| kubernetes_out.txt    | Output from application window and prediction window running with Kubernetes |
| .circleci/config.yml  | Configuration file for CircleCI to test repo                                 |

### Script Execution

Build environment

	make install

Test code

	make lint

Create docker container and launch app

	./run_docker.sh

Make Prediction with local Docker container

	./make_prediction.sh

Upload Docker image to DockerHub

	./upload_docker.sh

Start minikube

	minikube start

Deploy container and launch app

	./run_kubernetes.sh

Make Prediction with Kubernetes

	./make_prediction.sh


