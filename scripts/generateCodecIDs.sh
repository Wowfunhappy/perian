#!/bin/sh

m4 "${SCRIPT_INPUT_FILE_0}" > "${SCRIPT_OUTPUT_FILE_0}"

# Copy CodecIDs.h to derived sources so Rez can find it
cp "${SRCROOT}/CodecIDs.h" "${DERIVED_FILE_DIR}/CodecIDs.h"