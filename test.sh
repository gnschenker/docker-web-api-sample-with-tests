echo "List of environment variables"
env
echo "========================="
echo "Now sleeping for 10"
sleep 10
echo "========================="
#url="http://192.168.99.100/api/projects"
url="web:5000/api/projects"
echo "now accessing: ${url}"
echo "Now using the 'dig web' command:"
dig web
echo "========================="
if curl ${url} | grep -q '{"id":1,"name":"Heart Beat"}'; then
  echo "Test passed!"
  exit 0
else
  echo "Test failed!"
  exit 1
fi
