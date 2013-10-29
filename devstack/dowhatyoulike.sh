# You can put anything you like in this script to execute when vm bootup.

## The following will replace the repo source for apt-get
# cp /etc/apt/sources.list{,.$(date +%F_%T)}
# cat <<EOF > /etc/apt/sources.list
# deb http://mirror.bjtu.edu.cn/ubuntu/ precise main multiverse restricted universe
# deb http://mirror.bjtu.edu.cn/ubuntu/ precise-backports main multiverse restricted universe
# deb http://mirror.bjtu.edu.cn/ubuntu/ precise-proposed main multiverse restricted universe
# deb http://mirror.bjtu.edu.cn/ubuntu/ precise-security main multiverse restricted universe
# deb http://mirror.bjtu.edu.cn/ubuntu/ precise-updates main multiverse restricted universe
# deb-src http://mirror.bjtu.edu.cn/ubuntu/ precise main multiverse restricted universe
# deb-src http://mirror.bjtu.edu.cn/ubuntu/ precise-backports main multiverse restricted universe
# deb-src http://mirror.bjtu.edu.cn/ubuntu/ precise-proposed main multiverse restricted universe
# deb-src http://mirror.bjtu.edu.cn/ubuntu/ precise-security main multiverse restricted universe
# deb-src http://mirror.bjtu.edu.cn/ubuntu/ precise-updates main multiverse restricted universe
# EOF
