# AWS_ACC_NO is getting passed from the jenkins file in env variables
# while testing user can issue the command "make p
testqube_VERSION ?= 9.0
before-value:
	@echo $(ECR_REPO)
.PHONY: docker-build

after-value:
	ECR_REPO=$(AWS_ACC_NO).dkr.ecr.ap-southeast-2.amazonaws.com/testqube
	@echo $(AWS_ACC_NO)
	@echo $(ENVIRONMENT)
.PHONY: push-ecr