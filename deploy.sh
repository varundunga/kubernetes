docker build -t varundunga/client:latest -t varundunga/client:$SHA -f ./complex/client/Dockerfile ./complex/client
docker build -t varundunga/server:latest -t varundunga/server:$SHA -f ./complex/server/Dockerfile ./complex/server
docker build -t varundunga/worker:latest -t varundunga/worker:$SHA -f ./complex/worker/Dockerfile ./complex/worker
docker push varundunga/client
docker push varundunga/server
docker push varundunga/worker
kubectl apply -f ./
kubectl set image deployments/client-deployment client=varundunga/client:$SHA
kubectl set image deployments/server-deployment server=varundunga/server:$SHA
kubectl set image deployments/worker-deployment client=varundunga/worker:$SHA