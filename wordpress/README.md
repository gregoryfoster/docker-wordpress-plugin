# Create WordPress image
docker build -t swp-wordpress:latest .

# Run WordPress container based on WordPress image
docker run -d swp-wordpress:latest --name=swp-wordpress
