FROM registry.access.redhat.com/ubi8/go-toolset:1.18.4-8.1669838000

# Labels
LABEL name="aws-vmcreate" \
    maintainer="xyzcompany.com" \
    vendor="xyzcompany" \
    version="1.0.0" \
    release="1" \
    summary="This service enables provisioning/de-provisioning of AWS cloud vms." \
    description="This service enables provisioning/de-provisioning AWS cloud vms."

# copy code to the build path
USER root
WORKDIR /opt
RUN chgrp -R 0 /opt && \
    chmod -R g=u /opt && \
    chmod +x -R /opt
USER 1001
ENV ec2_tag_key "POC"
ENV ec2_tag_value "GolangOperator"
ENV ec2_command "create"
#can be delete also

COPY go.* ./
COPY aws-vmcreate.go .
RUN go mod download
RUN go build -o aws-vmcreate
CMD ["bash","-c","/opt/aws-vmcreate -c  $ec2_command -n $ec2_tag_key -v ec2_tag_value "]
