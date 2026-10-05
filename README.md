# Push a new Dockerfile (Builds :latest and :sha)
## Standard branch push
`
git add docker/api.Dockerfile
git commit -m "feat: add api dockerfile"
git push origin main
`


# Tag and publish a versioned release
## Git Tag triggering

### Create tag for the api image
`
git tag api/v1.0.0
`

### Push the tag to GitHub
`
git push origin api/v1.0.0
`


# Pull and run the container
## Deployment step

### 1. Log in to GitHub Container Registry (requires Personal Access Token with read:packages)
`
echo "YOUR_GITHUB_PAT" | docker login ghcr.io -u YOUR_GITHUB_USERNAME --password-stdin
`

### 2. Pull the tagged image
`
docker pull ghcr.io/YOUR_GITHUB_USERNAME/api:1.0.0
`

### 3. Run the container
`
docker run -d --name my-api-service ghcr.io/YOUR_GITHUB_USERNAME/api:1.0.0
`