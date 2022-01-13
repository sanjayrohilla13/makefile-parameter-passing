# AWS_ACC_NO is getting passed from the jenkins file in env variables
# while testing user can issue the command "make p
testqube_VERSION ?= 9.0
ECR_REPO = "initial value"

echo-value:
	@echo ECR_REPO
.PHONY: docker-build

display-value:
	ECR_REPO=$(AWS_ACC_NO).dkr.ecr.ap-southeast-2.amazonaws.com/testqube
	@echo $(ECR_REPO)
.PHONY: push-ecr