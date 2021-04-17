#!/bin/bash

# apt -y install unzip

# install besttrace
if [ ! -f "besttrace" ]; then
    wget https://github.com/Eveaz/autobesttrace/raw/main/besttrace
    # unzip besttrace4linux.zip
    chmod +x besttrace
fi

## start to use besttrace

next() {
    printf "%-70s\n" "-" | sed 's/\s/-/g'
}

clear
next

ip_list=(180.149.128.1 180.153.28.1 113.108.209.1 123.125.99.10 58.247.0.49 210.21.4.130 211.136.25.153 117.184.33.33 211.139.129.5)
ip_addr=(北京电信 上海电信 广州电信 北京联通 上海联通 广州联通 北京移动 上海移动 广州移动)
# ip_len=${#ip_list[@]}

for i in {0..7}
do
	echo ${ip_addr[$i]}
	./besttrace -q 1 ${ip_list[$i]}
	next
done
