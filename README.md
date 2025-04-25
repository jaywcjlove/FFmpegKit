FFmpegKit
===

```shell
./macos.sh --help
./macos.sh --xcframework \
    --enable-macos-audiotoolbox \
    --enable-macos-avfoundation \
    --enable-macos-bzip2 \
    --enable-macos-coreimage \
    --enable-macos-libiconv \
    --enable-macos-opencl \
    --enable-macos-opengl \
    --enable-macos-videotoolbox \
    --enable-macos-zlib \
    --enable-libvorbis \
    --enable-opus \
    --enable-lame
```

```shell
'macos.sh' builds FFmpegKit for macOS platform. By default two architectures (arm64 and x86-64) are enabled without any external libraries. Options can be used to disable architectures and/or enable external libraries. Please note that GPL libraries (external libraries with GPL license) need --enable-gpl flag to be set explicitly. When compilation ends, libraries are created under the prebuilt folder.

Usage: ./macos.sh [OPTION]...

Specify environment variables as VARIABLE=VALUE to override default build options.

Options:
  -h, --help			display this help and exit
  -v, --version			display version information and exit
  -d, --debug			build with debug information
  -s, --speed			optimize for speed instead of size
  -f, --force			ignore warnings
  -x, --xcframework		build xcframework bundles instead of framework bundles
  -l, --lts			build lts packages to support sdk 10.12+ devices
      --target=macos sdk version	override minimum deployment target [10.15]

Licensing options:
  --enable-gpl			allow building GPL libraries, created libs will be licensed under the GPLv3.0 [no]

Architectures:
  --disable-arm64		do not build arm64 architecture [yes]
  --disable-x86-64		do not build x86-64 architecture [yes]

Libraries:
  --full			enables all non-GPL external libraries
  --enable-macos-audiotoolbox	build with built-in Apple AudioToolbox support [no]
  --enable-macos-avfoundation	build with built-in Apple AVFoundation support [no]
  --enable-macos-bzip2		build with built-in bzip2 support [no]
  --enable-macos-videotoolbox	build with built-in Apple VideoToolbox support [no]
  --enable-macos-zlib		build with built-in zlib [no]
  --enable-macos-libiconv	build with built-in libiconv [no]
  --enable-macos-coreimage	build with built-in Apple CoreImage support [no]
  --enable-macos-opencl		build with built-in OpenCL [no]
  --enable-macos-opengl		build with built-in OpenGL [no]
  --enable-chromaprint		build with chromaprint [no]
  --enable-dav1d		build with dav1d [no]
  --enable-fontconfig		build with fontconfig [no]
  --enable-freetype		build with freetype [no]
  --enable-fribidi		build with fribidi [no]
  --enable-gmp			build with gmp [no]
  --enable-gnutls		build with gnutls [no]
  --enable-kvazaar		build with kvazaar [no]
  --enable-lame			build with lame [no]
  --enable-libaom		build with libaom [no]
  --enable-libass		build with libass [no]
  --enable-libilbc		build with libilbc [no]
  --enable-libtheora		build with libtheora [no]
  --enable-libvorbis		build with libvorbis [no]
  --enable-libvpx		build with libvpx [no]
  --enable-libwebp		build with libwebp [no]
  --enable-libxml2		build with libxml2 [no]
  --enable-opencore-amr		build with opencore-amr [no]
  --enable-openh264		build with openh264 [no]
  --enable-openssl		build with openssl [no]
  --enable-opus			build with opus [no]
  --enable-sdl			build with sdl [no]
  --enable-shine		build with shine [no]
  --enable-snappy		build with snappy [no]
  --enable-soxr			build with soxr [no]
  --enable-speex		build with speex [no]
  --enable-srt			build with srt [no]
  --enable-tesseract		build with tesseract [no]
  --enable-twolame		build with twolame [no]
  --enable-vo-amrwbenc		build with vo-amrwbenc [no]
  --enable-zimg			build with zimg [no]

GPL libraries:
  --enable-libvidstab		build with libvidstab [no]
  --enable-rubberband		build with rubber band [no]
  --enable-x264			build with x264 [no]
  --enable-x265			build with x265 [no]
  --enable-xvidcore		build with xvidcore [no]

Custom libraries:
  --enable-custom-library-[n]-name=value			name of the custom library []
  --enable-custom-library-[n]-repo=value			git repository of the source code []
  --enable-custom-library-[n]-repo-commit=value			git commit to download the source code from []
  --enable-custom-library-[n]-repo-tag=value			git tag to download the source code from []
  --enable-custom-library-[n]-package-config-file-name=value	package config file installed by the build script []
  --enable-custom-library-[n]-ffmpeg-enable-flag=value	library name used in ffmpeg configure script to enable the library []
  --enable-custom-library-[n]-license-file=value		licence file path relative to the library source folder []

Advanced options:
  --reconf-LIBRARY		run autoreconf before building LIBRARY [no]
  --redownload-LIBRARY		download LIBRARY even if it is detected as already downloaded [no]
  --rebuild-LIBRARY		build LIBRARY even if it is detected as already built [no]
  --no-framework		do not build framework bundles [no]
```