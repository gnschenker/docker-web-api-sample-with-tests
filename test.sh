echo "========================="
echo "Now sleeping for 10"
sleep 10   #give the web api time to start up...
echo "========================="
url="web:5000/api/projects"
echo "now accessing: ${url}"
if curl ${url} | grep -q '{"id":1,"name":"Heart Beat"}'; then
  echo "Test passed!"
  exit 0
else
  echo "Test failed!"
  exit 1
fi
