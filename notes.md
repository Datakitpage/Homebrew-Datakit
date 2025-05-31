# Homebrew DataKit Update Notes

Quick reference for updating the Homebrew formula when releasing new DataKit versions.

## Update Process

### 1. Get New Package Info
```bash
# Get SHA256 of new version
curl -L https://registry.npmjs.org/datakit-cli/-/datakit-cli-NEW_VERSION.tgz | shasum -a 256
```

### 2. Update Formula
Edit `Formula/datakit.rb`:
- Change URL to new version: `datakit-cli-NEW_VERSION.tgz`
- Replace SHA256 with value from step 1

### 3. Test & Push
```bash
# Test locally
brew uninstall datakit || true
brew install --build-from-source Formula/datakit.rb

# Verify installation
datakit --version

# Push to GitHub
git add Formula/datakit.rb
git commit -m "Update DataKit to vNEW_VERSION"
git push origin main
```

## Quick Script
```bash
#!/bin/bash
VERSION=$1
URL="https://registry.npmjs.org/datakit-cli/-/datakit-cli-$VERSION.tgz"
SHA256=$(curl -L "$URL" | shasum -a 256 | cut -d' ' -f1)

# Update formula file
sed -i.bak "s|datakit-cli-.*\.tgz|datakit-cli-$VERSION.tgz|" Formula/datakit.rb
sed -i.bak "s/sha256 \".*\"/sha256 \"$SHA256\"/" Formula/datakit.rb

echo "Updated to v$VERSION (SHA256: $SHA256)"
```

## Common Issues
- **Wrong SHA256**: Re-download and hash the tarball
- **Test fails**: Check if npm package actually exists on npmjs.org
- **Permission errors**: Use `brew uninstall` before testing new formula