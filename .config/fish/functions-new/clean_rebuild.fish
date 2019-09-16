function clean_rebuild
  watchman watch-del-all;
  rm package-lock.json;
  rm -rf ./node_modules;
  rm -rf ./tmp/metro-bundler-cache-*;
  rm -rf ./tmp/haste-map-react-native-packager-*;
  rm -rf ios/build;
  rm -rf ~/Library/Developer/Xcode/DerivedData;
  npm cache clear --force;
  npm install;
  react-native link;
end
