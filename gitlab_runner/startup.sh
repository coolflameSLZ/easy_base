docker-compose --env-file ./gitlab-runner.env up -d  && \
docker-compose logs -f


#docker run -itd --rm -v /srv/gitlab-runner/config:/etc/gitlab-runner gitlab/gitlab-runner:v13.3.1 register \
#  --non-interactive \
#  --executor "docker" \
#  --url "http://192.168.0.102:10080/" \
#  --registration-token "odqs6BEUXQ_cvo37rxMz" \
#  --description "docker-runner" \
#  --tag-list "docker,aws" \
#  --run-untagged="true" \
#  --locked="false" \
#  --access-level="not_protected"