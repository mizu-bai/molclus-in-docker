# molclus-in-docker

Actually, this repo is aimed to run tools provided in `molclus` on macOS via Docker.

## Build

```sh
$ docker build -t molclus --platform linux/amd64 ./
```

## Usage

Add these to shell profile

```sh
isostat () {
    docker run --platform linux/amd64 -it --rm -v "$(pwd)":/source -v /path/to/molclus_1.9.9.9_Linux:/opt/molclus molclus:latest sh -c "isostat $@"
}

mol2_xyz () {
    docker run --platform linux/amd64 -it --rm -v "$(pwd)":/source -v /path/to/molclus_1.9.9.9_Linux:/opt/molclus molclus:latest sh -c "mol2_xyz $@"
}

xyz2QC () {
    docker run --platform linux/amd64 -it --rm -v "$(pwd)":/source -v /path/to/molclus_1.9.9.9_Linux:/opt/molclus molclus:latest sh -c "xyz2QC $@"
}

gentor () {
    docker run --platform linux/amd64 -it --rm -v "$(pwd)":/source -v /path/to/molclus_1.9.9.9_Linux:/opt/molclus molclus:latest sh -c "gentor $@"
}

genmer () {
    docker run --platform linux/amd64 -it --rm -v "$(pwd)":/source -v /path/to/molclus_1.9.9.9_Linux:/opt/molclus molclus:latest sh -c "genmer $@"
}
```
