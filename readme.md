## Node-AdonisJs
Uses the latest, stable and official node image (currently `node:9.11.1`) and adds in latest stable yarn, GIT and AdonisJs cli tool.

Best used when you want to use AdonisDock but do want to install node locally to create a new AdonisJs project.


## Usage

To create a new AdonisJs project, or run any AdonisJs command, run the following:

```bash
cd ~/path/to/code

# Create a new AdonisJs app
docker run --rm \
    -v $(pwd):/opt \
    -w /opt \
    merlindiavova/node-adonisjs:latest \
    adonis new my-app
```

You may want to replace `$(pwd)` with your actual file path if `$(pwd)` does not correctly expand to your current working directory.