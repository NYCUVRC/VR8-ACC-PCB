#!/bin/bash

# Script to push the updated v1.2.3 tag to the remote repository
# This script should be run after the tag has been moved locally

echo "Pushing updated tag v1.2.3 to remote repository..."
echo "Old location: 1de8b3f (J5 reorientation)"
echo "New location: c7e755f (Initial plan)"
echo ""

# Force push the tag to update it on the remote
git push origin v1.2.3 --force

if [ $? -eq 0 ]; then
    echo ""
    echo "✓ Tag v1.2.3 successfully pushed to remote"
    echo ""
    echo "Verifying tag location:"
    git ls-remote --tags origin v1.2.3
else
    echo ""
    echo "✗ Failed to push tag. Please check your permissions and try again."
    exit 1
fi
