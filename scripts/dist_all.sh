#!/usr/bin/env bash
set -e

# Get all local cpllab/language-models image references
image_refs=($(docker images -f reference=cpllab/language-models --format "{{.Repository}}:{{.Tag}}" ))

# Push to Docker Hub
for ref in ${image_refs[*]}; do
    echo "======= Pushing", $ref
    docker push $ref
done

# Build new registry
echo "========= Building registry"
python tools/build_registry.py ${image_refs[@]} > registry.json
echo "Saved registry to ./registry.json"