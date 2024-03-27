# Grading environment for CIS 380 (Algorithms Engineering)

This repository is used to configure the auto-grading environment used for algorithms engineering programming assignments.

## Pulling from dockerhub

The environment image should be available on dockerhub @ `amlalejini/gvsu-cis380-alg-env`.

## Building the image locally

In the root of this repository:

```
docker image build ./ -t amlalejini/gvsu-cis380-alg-env:vX
```

To run interactively

```
docker run -it --entrypoint bash amlalejini/gvsu-cis380-alg-env:vX
```