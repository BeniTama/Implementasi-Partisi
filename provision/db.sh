# Update repositories
sudo apt-get update -y

# Download and Install MySQL Cluster
sudo apt-get install mysql-server -y

# Allow remote access
sudo ufw allow mysql

# Start MySQL service
sudo systemctl start mysql