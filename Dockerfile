FROM n8nio/n8n:latest

# Install n8n-nodes-templated community node globally
# This ensures the Templated.io community node is available in the n8n instance
USER root
RUN npm install -g n8n-nodes-templated
USER node

# The node will be loaded via the N8N_NODES_INCLUDE environment variable
# which should be set to: n8n-nodes-templated
