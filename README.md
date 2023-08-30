# Sandbox Arch Linux Image

This is a base Arch Linux image, with a non-root user named `megatron` and base
packages installed.

## Usage

    $ docker run --rm -it dannyben/archlinux


## Using it as a base image

Since this image sets the user to `megatron`, if you need to execute commands
that require root access in your image, you need to use this pattern:

```dockerfile
FROM dannyben/archlinux
USER root

# root stuff goes here

USER megatron
```

---

- [On Docker Hub](https://hub.docker.com/r/dannyben/archlinux/)
- [On GitHub](https://github.com/DannyBen/docker-archlinux)

