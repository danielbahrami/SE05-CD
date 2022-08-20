curl -X POST -H "Content-Type: application/json" -d '{"message":"'"${COMMIT_SHA}"'"}' "${DEV_IP}:31600"
if [curl -s "${DEV_IP}:316000" | grep -q "${COMMIT_SHA}"]; then
  echo "Frontend connection test passed"
else
  echo "Frontend connection test failed"
fi