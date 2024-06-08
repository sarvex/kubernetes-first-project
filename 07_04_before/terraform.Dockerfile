FROM carlosnunez/terraform:1.4.4 as terraform

FROM amazon/aws-cli:2.16.4
COPY --from=terraform /usr/local/bin/terraform /usr/local/bin/terraform
RUN yum -y install git
ENTRYPOINT [ "terraform" ]
