# android-busybox
Yet another android busybox build environment.

## Example usage
Build the Docker image and run the compile.sh script within an interactive container. The compile.sh script downloads
busybox-1.28.4 sources and compiles them with Busybox's default android_ndk_defconfig.

```
docker build -t busybox-build .
docker run --rm -it -v ${PWD}:/project busybox-build bash ./compile.sh
```
