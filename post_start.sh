# Install useful packages
apt-get update
apt-get install -y less vim screen 

# Set environment variables by adding to ~/.bashrc
echo "export POETRY_HOME=/workspace/opt/poetry" >> ~/.bashrc
echo "export POETRY_CACHE_DIR=/workspace/opt/poetry/cache" >> ~/.bashrc
echo "export CARGO_HOME=/workspace/opt/cargo" >> ~/.bashrc
echo "export PATH=$PATH:/workspace/opt/poetry/bin:/workspace/opt/cargo/bin" >> ~/.bashrc

# Log in to Hugging Face
cat /workspace/hf_token | tr -d " \t\n\r" | xargs -0 -I {} poetry run huggingface-cli login --token={}