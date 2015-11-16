# Create MySQL image
docker build -t dwp-mysql:latest .

# Run MySQL container based on MySQL image
docker run -d dwp-mysql:latest --name=dwp-mysql
