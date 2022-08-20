curl -X POST -H "Content-Type: application/json" -d '{"message":"'"${COMMIT_SHA}"'"}' "${DEV_IP}:31600/backend"
if [curl -s "${DEV_IP}:316000/backend" | grep -q "${COMMIT_SHA}"]; then
  echo "Backend connection test passed"
else
  echo "Backend connection test failed"
fi