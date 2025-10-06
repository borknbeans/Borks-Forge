#!/bin/bash

# Script to refresh IDE indexing for decompiled Minecraft sources
echo "Refreshing IDE indexing for decompiled Minecraft sources..."

# Refresh Gradle project
echo "Refreshing Gradle project..."
./gradlew --refresh-dependencies

# Clean and rebuild to ensure everything is indexed
echo "Cleaning and rebuilding project..."
./gradlew clean build

echo "IDE refresh complete!"
echo ""
echo "The decompiled Minecraft sources are now available in:"
echo "  - src/decompiled/net/minecraft/ (common classes)"
echo "  - src/decompiled/com/mojang/ (Mojang libraries)"
echo ""
echo "You should now be able to search for Minecraft classes using Ctrl+P in your IDE."
echo "Try searching for classes like 'MinecraftClient', 'Block', 'Entity', etc."
