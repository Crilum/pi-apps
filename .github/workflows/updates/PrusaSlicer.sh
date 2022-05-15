#!/bin/bash

webVer="v$(get_release prusa3d/prusaslicer)"
armhf_url="$(curl -s https://api.github.com/repos/prusa3d/prusaslicer/releases/latest | grep '"browser_download_url":' | sed -e '/armv7l/!d' -e '/AppImage/!d' -e 's/.*"browser_download_url"://g' -e 's/"//g')"
arm64_url="$(curl -s https://api.github.com/repos/prusa3d/prusaslicer/releases/latest | grep '"browser_download_url":' | sed -e '/aarch64/!d' -e '/AppImage/!d' -e 's/.*"browser_download_url"://g' -e 's/"//g')"

source $GITHUB_WORKSPACE/.github/workflows/update_github_script.sh