docker build -t varundunga/multi-client:latest -t varundunga/multi-client:$SHA -f ./complex/client/Dockerfile
docker build -t varundunga/multi-server:latest -t varundunga/multi-client:$SHA -f ./complex/server/Dockerfile
docker build -t varundunga/multi-worker:latest -t varundunga/multi-client:$SHA -f ./complex/worker/Dockerfile
docker push varundunga/multi-client
docker push varundunga/multi-server
docker push varundunga/multi-worker