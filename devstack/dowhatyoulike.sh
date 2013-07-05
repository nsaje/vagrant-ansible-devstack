cp /etc/apt/sources.list{,.$(date +%F_%T)}

cat <<EOF > /etc/apt/sources.list
deb http://mirror.bjtu.edu.cn/ubuntu/ precise main multiverse restricted universe
deb http://mirror.bjtu.edu.cn/ubuntu/ precise-backports main multiverse restricted universe
deb http://mirror.bjtu.edu.cn/ubuntu/ precise-proposed main multiverse restricted universe
deb http://mirror.bjtu.edu.cn/ubuntu/ precise-security main multiverse restricted universe
deb http://mirror.bjtu.edu.cn/ubuntu/ precise-updates main multiverse restricted universe
deb-src http://mirror.bjtu.edu.cn/ubuntu/ precise main multiverse restricted universe
deb-src http://mirror.bjtu.edu.cn/ubuntu/ precise-backports main multiverse restricted universe
deb-src http://mirror.bjtu.edu.cn/ubuntu/ precise-proposed main multiverse restricted universe
deb-src http://mirror.bjtu.edu.cn/ubuntu/ precise-security main multiverse restricted universe
deb-src http://mirror.bjtu.edu.cn/ubuntu/ precise-updates main multiverse restricted universe
EOF

## enable apt-get --force-yes option
cat <<EOF >> /home/vagrant/devstack/functions
function apt_get() {
    [[ "$OFFLINE" = "True" || -z "$@" ]] && return
    local sudo="sudo"
    [[ "$(id -u)" = "0" ]] && sudo="env"
    $sudo DEBIAN_FRONTEND=noninteractive \
    http_proxy=$http_proxy https_proxy=$https_proxy \
    no_proxy=$no_proxy \
    apt-get --force-yes --option "Dpkg::Options::=--force-confold" --assume-yes "$@"
}
EOF
