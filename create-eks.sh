export AWS_REGION=eu-central-1
eksctl create cluster \
    --version=1.21 \
    --name=dfo-test-cluster-1 \
    --node-private-networking \
    --managed --nodes=2 \
    --alb-ingress-access \
    --region=${AWS_REGION} \
    --node-labels="intent=control-apps" \
    --asg-access