#! /usr/bin/env bash

set -eufo pipefail

declare GREEN='\033[0;32m'
declare RED='\033[0;31m'
declare YELLOW='\033[0;33m'
declare NOCOLOR='\033[0m'

case "$(uname -s)" in
Darwin)
	# Install homebrew if not already exist
	if [ ! "$(command -v brew)" ]; then
		echo -e "\n${YELLOW} Installing package manager: brew ${NOCOLOR}\n"

		/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

		eval "$(homebrew/bin/brew shellenv)"
	fi
	;;
Linux)
    # Install yay or some AUR helper 
	echo -e "${RED}Not implemented${NOCOLOR}\n"
	exit 1
    ;;
*)
    echo "${RED}unsupported OS${NOCOLOR}\n"
    exit 1
    ;;
esac
