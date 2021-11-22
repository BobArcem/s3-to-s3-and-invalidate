FROM python:3.8-alpine

LABEL "com.github.actions.name"="Copy S3 Test to Live and Invalidate CloudFront"
LABEL "com.github.actions.description"="Copy S3 to S3 and then Invalidate Cloudfront Cache"
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="green"

LABEL version="1.0"
LABEL repository="https://github.com/BobArcem/s3-sync-with-cloudfront-invalidation"
LABEL homepage="https://fortressdao.finance"
LABEL maintainer="BobArcem"

ENV AWSCLI_VERSION="1.18.210"

RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]