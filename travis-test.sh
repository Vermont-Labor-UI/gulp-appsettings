#!/bin/sh

echo 'Creating appsettings folder'
mkdir -p wwwroot/lib/iUS.AppSettings/

echo "Writing appsettings file"
echo "{ 'isPassed': true}" > wwwroot/lib/iUS.AppSettings/testsettings.json

echo "Running gulp appsettings"
gulp appsettings


echo "asserting configuration files were created"
if [ ! -f 'Configuration/testsettings.json' ]; then 
	echo "Configuration/testsettings.json was not created" 
	exit 1 
fi
