FROM carlosnunez/terraform:1.0.4 as terraform

FROM amazon/aws-cli:2.16.2
COPY --from=terraform /usr/local/bin/terraform /usr/local/bin/terraform
RUN yum -y install git
ENTRYPOINT [ "terraform" ]
