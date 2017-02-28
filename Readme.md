### Packpack python container

Help you to wrap your requirements.txt as .zip file. 

Docker helps to become OS-system agnostic

### Usage

`docker run -v <my-dir-with-requirements.txt>:/pack packpack`

The command will produce a file `packages.zip` in the directory your `<my-dir-with-requirements.txt>`

### Building the container

`docker build -t pypack .`

### Usecases

1. Spark submit Python jobs via Livy or Spark-Submit

...
