if wget --spider "http://${DEV_IP}:30175"; then
  echo "Frontend connection test passed"
else
  echo "Frontend connection test failed"
  exit 1
fi
