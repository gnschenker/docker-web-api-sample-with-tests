sleep 10
if curl web:5000/api/projects | grep -q '{"id":1,"name":"Heart Beat"}'; then
  echo "Success"
  exit 0
else
  echo "Fail!"
  exit 1
fi

