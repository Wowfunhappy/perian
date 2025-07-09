#!/bin/sh -v

echo "Using pre-built libs from ffmpeglibs directory."

# Create Universal directory if it doesn't exist
mkdir -p "${BUILT_PRODUCTS_DIR}/Universal"

# Copy prebuilt libraries to expected location
cp "${SRCROOT}/ffmpeglibs/libavcodec.a" "${BUILT_PRODUCTS_DIR}/Universal/"
cp "${SRCROOT}/ffmpeglibs/libavformat.a" "${BUILT_PRODUCTS_DIR}/Universal/"
cp "${SRCROOT}/ffmpeglibs/libavutil.a" "${BUILT_PRODUCTS_DIR}/Universal/"
cp "${SRCROOT}/ffmpeglibs/libswscale.a" "${BUILT_PRODUCTS_DIR}/Universal/"

# Copy prebuilt headers to ffmpeg source directories
echo "Copying prebuilt headers..."
cp "${SRCROOT}/ffmpeglibs/avconfig.h" "${SRCROOT}/ffmpeg/libavutil/"
cp "${SRCROOT}/ffmpeglibs/config.h" "${SRCROOT}/ffmpeg/"

echo "Copied prebuilt libraries to ${BUILT_PRODUCTS_DIR}/Universal/"
echo "Copied prebuilt headers to ffmpeg source directories"