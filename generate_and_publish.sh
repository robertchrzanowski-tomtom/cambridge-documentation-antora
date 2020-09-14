echo '[antora] Generating antora site'
antora antora-playbook.yml

echo '[docker] Building docker image'
docker build -t cambridge-mqtt-doc-antora .

echo '[docker] Creating docker tag'
docker tag cambridge-mqtt-doc-antora vega-cambridge-dev-200.net-10-66-0-0.tt3.com:5000/cambridge/cambridge-mqtt-doc-antora:0.0.1

echo '[docker] Pushing docker image to antora'
docker push vega-cambridge-dev-200.net-10-66-0-0.tt3.com:5000/cambridge/cambridge-mqtt-doc-antora:0.0.1

echo '[done] Navigate to portainer images: http://vega-cambridge-dev-200.net-10-66-0-0.tt3.com:9000/#/images'