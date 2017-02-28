#! /bin/sh

if [ ! -f /pack/requirements.txt ]; then
	echo "File /pack/requirements.txt not found, please make sure it exists, and you run your docker with -v <dir_with_requirements.txt>:/pack option"
        echo "Container will exit with code 1, see ya!"
        exit 1	
fi 

pip install -r /pack/requirements.txt --target ./packages

if [ -d packages ]; then
	cd packages
	find . -name "*.pyc" -delete
	find . -name "*.egg-info" | xargs rm -rf
	zip -9mrv packages.zip .
	mv packages.zip ..
	cd ..
	rm -rf packages
fi
