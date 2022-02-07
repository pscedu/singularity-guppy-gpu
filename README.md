![Status](https://github.com/pscedu/singularity-guppy/actions/workflows/main.yml/badge.svg)
![Status](https://github.com/pscedu/singularity-guppy/actions/workflows/pretty.yml/badge.svg)
![Issue](https://img.shields.io/github/issues/pscedu/singularity-guppy)
![forks](https://img.shields.io/github/forks/pscedu/singularity-guppy)
![Stars](https://img.shields.io/github/stars/pscedu/singularity-guppy)
![License](https://img.shields.io/github/license/pscedu/singularity-guppy)

# singularity-guppy
Singularity recipe for [guppy](https://community.nanoporetech.com/protocols/Guppy-protocol/v/gpb_2003_v1_revac_14dec2018/linux-guppy).

## Installing the container on Bridges 2
Copy the

* `SIF` file
* and the scripts

to `/opt/packages/guppy/6.0.0`.

Copy the file `modulefile.lua` to `/opt/modulefiles/guppy` as `6.0.0.lua`.

## Building the image using the recipe
### To build the image locally
Run the script `build.sh` to build image locally.

```
bash ./build.sh
```

### To build the image remotely
Run the script `rbuild.sh` to build image remotely.

```
bash ./rbuild.sh
```

## To run tests
To run the available tests, run the command

```
bash ./test.sh
```

---
Copyright © 2020-2022 Pittsburgh Supercomputing Center. All Rights Reserved.

The [Biomedical Applications Group](https://www.psc.edu/biomedical-applications/) at the [Pittsburgh Supercomputing
Center](http://www.psc.edu) in the [Mellon College of Science](https://www.cmu.edu/mcs/) at [Carnegie Mellon University](http://www.cmu.edu).
