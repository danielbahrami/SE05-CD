if curl "http://${DEV_IP}:31147/fortunes"; then
  echo "Backend connection test passed"
else
  echo "Backend connection test failed"
  exit 1
fi
