#!/bin/bash

CLUSTER="enterprise-cicd-cluster"
SERVICE="enterprise-cicd-service"

echo "🔍 Finding your application..."

TASK_ARN=$(aws ecs list-tasks --cluster $CLUSTER --service $SERVICE --query 'taskArns[0]' --output text)

if [ "$TASK_ARN" == "None" ] || [ -z "$TASK_ARN" ]; then
  echo "❌ No running tasks found! Waiting for deployment..."
  exit 1
fi

ENI_ID=$(aws ecs describe-tasks --cluster $CLUSTER --tasks $TASK_ARN --query 'tasks[0].attachments[0].details[?name==`networkInterfaceId`].value' --output text)
PUBLIC_IP=$(aws ec2 describe-network-interfaces --network-interface-ids $ENI_ID --query 'NetworkInterfaces[0].Association.PublicIp' --output text)

echo ""
echo "🚀 YOUR APPLICATION IS LIVE!"
echo "================================"
echo "Application URL: http://$PUBLIC_IP:3000"
echo ""
echo "Test endpoints:"
echo "  curl http://$PUBLIC_IP:3000/health"
echo "  curl http://$PUBLIC_IP:3000/api/status"
echo "  curl http://$PUBLIC_IP:3000/api/data"
