# n8n with Templated Community Node

Custom n8n Docker image with the [n8n-nodes-templated](https://www.npmjs.com/package/n8n-nodes-templated) community node pre-installed for Sliplane deployment.

## Overview

This repository provides a custom n8n Docker image that includes the Templated.io community node, enabling automated generation of images and PDFs from dynamic templates within n8n workflows.

## Features

- **Base Image**: n8nio/n8n:latest
- **Community Node**: n8n-nodes-templated (pre-installed)
- **Deployment Ready**: Optimized for Sliplane.io hosting
- **Production Ready**: Secure and tested configuration

## Required Environment Variables

For the community node to function properly, ensure these environment variables are set in your deployment:


N8N_COMMUNITY_PACKAGES_ENABLED=true
N8N_UNVERIFIED_PACKAGES_ENABLED=true
N8N_NODES_INCLUDE=n8n-nodes-templated

## Deployment Instructions

### Sliplane.io Deployment

1. **Create Service**: Deploy from GitHub repository
2. **Repository**: `Tek-Fly/n8n-custom-templated`
3. **Branch**: `main`
4. **Dockerfile Path**: `Dockerfile`
5. **Environment Variables**: Add the required variables above
6. **Deploy**: The service will build with the Templated node included

### Docker Run (Local Testing)



## Templated.io Node Capabilities

The installed community node provides the following operations:

| Operation | Description |
|-----------|-------------|
| **Create Render** | Generate images/PDFs from templates with JSON data |
| **Retrieve Render** | Get render status and download URLs |
| **Merge Renders** | Combine multiple PDFs into one document |
| **Template Management** | Retrieve template details and layers |
| **List Operations** | Browse templates and renders |

## Usage Examples

### Basic Image Generation
1. Add Templated node to your workflow
2. Configure your Templated.io API credentials
3. Select "Create Render" operation
4. Choose your template and provide JSON data
5. Execute to generate dynamic images/PDFs

### Common Use Cases
- **Marketing**: Personalized social media posts and ads
- **E-commerce**: Dynamic product images with pricing
- **Documents**: Automated certificates and reports
- **SaaS**: User-specific dashboards and content

## Development

### Building Locally


### Adding Additional Community Nodes
To add more community nodes, update the Dockerfile:



### Adding Additional Community Nodes
To add more community nodes, update the Dockerfile:



And update the `N8N_NODES_INCLUDE` environment variable:


## Troubleshooting

### Node Not Appearing
If the Templated node doesn't appear in your workflow editor:

1. **Check Environment Variables**: Ensure all required variables are set
2. **Verify Build**: Check deployment logs for successful npm installation
3. **Restart Service**: Restart your n8n service after configuration changes
4. **Check Logs**: Look for "Unrecognized node type" errors in runtime logs

### Common Issues
- **Permission Errors**: The Dockerfile switches to root user for installation, then back to node user
- **Network Issues**: Ensure your deployment environment can access npm registry
- **Version Conflicts**: Use latest n8n base image for compatibility

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test the build locally
5. Submit a pull request

## License

This project extends the n8n platform with community nodes. Please review:
- [n8n License](https://github.com/n8n-io/n8n/blob/master/LICENSE.md)
- [Templated.io Terms](https://templated.io/terms)

## Support

- **n8n Documentation**: [docs.n8n.io](https://docs.n8n.io)
- **Templated Documentation**: [templated.io/docs](https://templated.io/docs)
- **Community Node**: [npmjs.com/package/n8n-nodes-templated](https://www.npmjs.com/package/n8n-nodes-templated)

---

**Created by**: Tek-Fly Ltd  
**Maintained for**: Production n8n deployments with Templated.io integration  
**Last Updated**: September 2025
