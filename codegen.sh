#!/bin/sh
flutter packages pub run build_runner build --delete-conflicting-outputs
cd ./lib/data_source/network
find . -name '*.g.dart' -exec sed -i '' 's/DateTime.parse/DateTime.tryParse/g' {} +
cd ../..