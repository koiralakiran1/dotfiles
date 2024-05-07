# Bitwarden unlock
function bwu() {
    BW_STATUS=$(bw status | jq -r .status)
    case "$BW_STATUS" in
    "unauthenticated")
        echo "Logging into BitWarden"
        export BW_SESSION=$(bw login --raw)
        ;;
    "locked")
        echo "Unlocking Vault"
        export BW_SESSION=$(bw unlock --raw)
        ;;
    "unlocked")
        echo "Vault is unlocked"
        ;;
    *)
        echo "Unknown Login Status: $BW_STATUS"
        return 1
        ;;
    esac

    bw sync
    echo "export BW_SESSION='$BW_SESSION'" > $ZSH_CUSTOM/99_bw-session-export.zsh
    (command -v omz > /dev/null) && omz reload
}
