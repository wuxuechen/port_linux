 find . -name "Makefile*" -exec sed -i 's/-march=armv5\b/-march=armv7-a/g' {} \;
 find . -name "*.mk" -exec sed -i 's/-march=armv5\b/-march=armv7-a/g' {} \;

