FROM carlosnunez/terraform:0.15.1 as terraform

FROM amazon/aws-cli:2.16.8
COPY --from=terraform /usr/local/bin/terraform /usr/local/bin/terraform
RUN yum -y install git
ENTRYPOINT [ "terraform" ]
