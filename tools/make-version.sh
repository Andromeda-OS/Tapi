#!/bin/sh

#===- lib/Config/Version.cpp - TAPI Version Number ------------*- sh -*-=====#
#
#                     The LLVM Compiler Infrastructure
#
# This file is distributed under the University of Illinois Open Source
# License. See LICENSE.TXT for details.
#
#===----------------------------------------------------------------------===#
#
# Creates the TAPI version header using the information defined in Xcode.
#
#===----------------------------------------------------------------------===#

set -e
mkdir -p $(dirname "${SCRIPT_OUTPUT_FILE_0}")

cat "${SCRIPT_INPUT_FILE_0}" | sed -E \
	-e "s,@TAPI_VERSION@,${TAPI_VERSION},g" \
	-e "s,@TAPI_VERSION_MAJOR@,${TAPI_VERSION_MAJOR},g" \
	-e "s,@TAPI_VERSION_MINOR@,${TAPI_VERSION_MINOR},g" \
	-e "s,@TAPI_VERSION_PATCH@,${TAPI_VERSION_PATCH},g" \
> "${SCRIPT_OUTPUT_FILE_0}"
