#curl -X POST -H "Content-Type: application/json" -d '{"message":"'"${COMMIT_SHA}"'"}' "${DEV_IP}:30175"
if wget --spider "http://${DEV_IP}:30175"; then
  echo "Frontend connection test passed"
else
  echo "Frontend connection test failed"
  exit 1
fi
