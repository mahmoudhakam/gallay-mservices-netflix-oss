#!/usr/bin/env bash

echo -e "\nLet`s get start our mission"
echo -e  "...............................................................\n"
echo "1- Installing [parent-build-base] module..."
./mvnw --quiet clean install -pl base/parent-build-base || exit 126
echo -e "Done successfully.\n"
echo "2- Installing [gallary-cloud-base] module..."
./mvnw --quiet clean install -pl base/gallary-cloud-base || exit 126
echo -e "Done successfully.\n"
echo "3- Installing shared [Services Utilities] module..."
./mvnw --quiet clean install -pl  netflix-cloud-infra/eureka-server || exit 126
echo -e "Done successfully.\n"

echo -e "Horray, You can now start the battle"