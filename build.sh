# Configuration
version="v0.7.0"

# Temporary directory
tmp="spawn-$version"

# Create a temporary build folder
mkdir "$tmp"
echo "> Created $tmp directory"

# Copy the data to the build folder
cp -r pack.mcmeta ./data "$tmp"
echo "> Copied files into $tmp"

# Replace _version_ string in files with appropriate version
find "./$tmp" -name "*.mcfunction" -exec sed -i '' -e "s/_version_/${version}/g" {} +
echo "> Replaced all instances of _version_"

# Zip the file
echo "> Zipping..."
cd "./$tmp"
zip -r "${tmp}.zip" "./data" "./pack.mcmeta"
mv "${tmp}.zip" "../"
echo "> Zipped $tmp into $tmp.zip"

# Remove the temporary directory
cd "../"
rm -rf "$tmp"
echo "> Removed $tmp"