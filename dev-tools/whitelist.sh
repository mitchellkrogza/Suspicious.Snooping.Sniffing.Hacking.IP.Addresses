#!/bin/bash
# Whitelist Script for Phishing.Database
# Contributed by Alex Williams - https://github.com/mkb2091

# WhiteList IPs
uhb_whitelist -f ${TRAVIS_BUILD_DIR}/ips.list -o ${TRAVIS_BUILD_DIR}/ips.list -w ${TRAVIS_BUILD_DIR}/whitelist.me/whitelist.me


# **********************
# Exit With Error Number
# **********************

exit ${?}

