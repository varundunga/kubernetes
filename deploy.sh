docker build -t varundunga/multi-client:latest -t varundunga/multi-client:$SHA -f ./complex/client/Dockerfile ./complex/client
docker build -t varundunga/multi-server:latest -t varundunga/multi-client:$SHA -f ./complex/server/Dockerfile ./complex/server
docker build -t varundunga/multi-worker:latest -t varundunga/multi-client:$SHA -f ./complex/worker/Dockerfile ./complex/worker
docker push varundunga/multi-client
docker push varundunga/multi-server
docker push varundunga/multi-worker