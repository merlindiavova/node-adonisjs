## Node-AdonisJs
Uses the latest, stable and official node image (currently `node:9.11.1`), the AdonisJs cli tool and my [AdonisDocker](https://www.npmjs.com/package/adonisdocker) npm package.

Good use case: When you want to use install AdonisJs but do want to install node locally.

## Usage

To run any AdonisJs command, do the following:

```bash
cd ~/path/to/code

docker run --rm \
    -v $(pwd):/var/www/html \
    -w /var/www/html \
    merlindiavova/node-adonisjs:latest \
    adonis {command-here}
```

You may want to replace `$(pwd)` with your actual file path if `$(pwd)` does not correctly expand to your current working directory.

Example: To create a new AdonisJs project

```bash
cd ~/path/to/code

# Create a new AdonisJs app
docker run --rm \
    -v $(pwd):/var/www/html \
    -w /var/www/html \
    merlindiavova/node-adonisjs:latest \
    adonis new my-app
```

---

### Making it all easier
I recommend creating an alias for the AdonisJS cli tool.

```bash
# Please note the single quotes (' '). 
# If you use double quotes (" ") $(pwd) will not expand.

alias adonis='docker run --rm \
    -v $(pwd):/var/www/html \
    -w /var/www/html \
    merlindiavova/node-adonisjs:latest \
    adonis'
```

Now you can run AdonisJS commands by typing ```adonis {command}```.

#### Node and NPM

As this image is built on top of the Official Node Docker image, you can directly access node and npm. I recommend if you already haven't done so; to create aliases for of  them both.

```bash
alias node='docker run --rm \
    -v $(pwd):/var/www/html \
    -w /var/www/html \
    merlindiavova/node-adonisjs:latest \
    node'

alias npm='docker run --rm \
    -v $(pwd):/var/www/html \
    -w /var/www/html \
    merlindiavova/node-adonisjs:latest \
    npm'
```

Now you can run node commands by typing ```node {command}``` or ```npm {command}```.

---

## AdonisDocker
Installed alongside the AdonisJs cli tool is my [AdonisDocker](https://www.npmjs.com/package/adonisdocker) npm package. This package helps you to setup an AdonisJs Docker development environment.

To get started run the following:

```bash
cd /path/to/project

docker run --rm \
    -v $(pwd):/var/www/html \
    -w /var/www/html \
    merlindiavova/node-adonisjs:latest \
    copyadonisd

bash adonisd init
```

This will copy the the adonisd script and supporting docker files to your project. Read more about the adonisdocker package at [https://www.npmjs.com/package/adonisdocker](https://www.npmjs.com/package/adonisdocker)