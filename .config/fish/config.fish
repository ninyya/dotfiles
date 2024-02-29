if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path "/home/nin/.local/bin"

set -x MODULAR_HOME "/home/nin/.modular"
fish_add_path "/home/nin/.modular/pkg/packages.modular.com_mojo/bin"


# Start or re-use a gpg-agent.
gpgconf --launch gpg-agent

# Ensure that GPG Agent is used as the SSH agent
set -e SSH_AUTH_SOCK
set -U -x SSH_AUTH_SOCK ~/.gnupg/S.gpg-agent.ssh
