# BGB in Docker

[BGB](https://bgb.bircd.org/) running via wine in a docker container, accessible via a web browser.

There's no sound, though.

## Usage

```
docker run --rm -it -p 8080:8080 suchipi/bgb
```

- open http://localhost:8080

## Note: ROMs/Saves

To access your ROMs and saves, you'll probably want to volume-mount a folder from your local filesystem into the container, using docker's `-v` flag:

```
docker run --rm -it -p 8080:8080 -v $HOME/my-roms-folder:/roms suchipi/bgb
```
