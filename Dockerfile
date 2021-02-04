FROM ubuntu

LABEL version="1.0.0"

LABEL com.github.actions.name="SAM Deploy Action"
LABEL com.github.actions.description="Deploy AWS SAM Stack"
LABEL com.github.actions.icon="upload-cloud"
LABEL com.github.actions.color="blue"

LABEL repository="https://github.com/Zealen/sam-deploy-action"
LABEL homepage="https://github.com/Zealen/sam-deploy-action"
LABEL maintainer="Zealen"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y awscli

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
