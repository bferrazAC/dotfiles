source common/functions.sh

# bpkg
if which bpkg &> /dev/null; then
    msg_checking "bpkg"
else
    msg_install "bpkg" "curl -Lo- http://get.bpkg.io| bash"
    curl -Lo- "https://raw.githubusercontent.com/bpkg/bpkg/master/setup.sh" | bash
    msg_ok "OK"
fi

# wifi-password
if which wifi-password &> /dev/null; then
    msg_checking "wifi-password"
else
    msg_install "wifi-password" "bpkg install rauchg/wifi-password"
    bpkg install rauchg/wifi-password
    msg_ok "OK"
fi