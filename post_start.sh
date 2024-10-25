# Install useful packages
apt-get update
apt-get install -y less vim screen 

# Set environment variables by adding to ~/.bashrc
echo "export POETRY_HOME=/workspace/opt/poetry" >> ~/.bashrc
echo "export POETRY_CACHE_DIR=/workspace/opt/poetry/cache" >> ~/.bashrc
echo "export CARGO_HOME=/workspace/opt/cargo" >> ~/.bashrc
echo "export PATH=$PATH:/workspace/opt/poetry/bin:/workspace/opt/cargo/bin" >> ~/.bashrc