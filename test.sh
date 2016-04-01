echo "Waiting for Web API to be ready"
sleep 15

if curl web:5000/api/projects/5 | grep -q '{"id":5,"name":"Mystery"}'; then
  echo "api/projects/5 succeeded"
else
  echo "api/projects/5 FAILED"
  exit 1
fi

if curl web:5000/api/projects | grep -q '{"id":1,"name":"Heart Beat"}'; then
  echo "api/projects succeeded"
else
  echo "api/projects FAILED"
  exit 1
fi
exit 0

