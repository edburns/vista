cat payload.json | fn run -e HOSTNAME=$HOSTNAME -e PUBNUB_SUBSCRIBE_KEY=$PUBNUB_SUBSCRIBE_KEY -e PUBNUB_PUBLISH_KEY=$PUBNUB_PUBLISH_KEY -e ACCESS=$ACCESS -e SECRET=$SECRET -e MINIO_SERVER_URL=$MINIO_SERVER_URL
