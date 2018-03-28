# Visual Studio Code
code () {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code" -n
    else
        [[ $1 = /* ]] && F="$1" || F="$PWD/${1#./}"
        open -a "Visual Studio Code" -n --args "$F"
    fi
}

# Create a new directory and enter it
function mdc() {
	mkdir -p "$@" && cd "$@"
}

# who is using the laptop's iSight camera?
camerausedby() {
	echo "Checking to see who is using the iSight camera…"
	usedby=$(lsof | grep -w "AppleCamera\|USBVDC\|iSight" | awk '{printf $2"\n"}' | xargs ps)
	echo -e "Recent camera uses:\n$usedby"
}

function emptyglobaltrash() {
    for trash in /Volumes/*/.Trashes; do
        if [[ -n "$(ls -A ${trash} 2>/dev/null)" ]]
        then
            sudo rm -rf ${trash} && sudo mkdir ${trash} && echo "${trash} has been emptied."
        else
            echo "${trash} is already empty."
        fi
    done

}