from python:3
workdir /qmk
run apt update && apt install sudo \
 && python3 -m pip install qmk \
 && qmk setup -y \
 && qmk config user.keyboard=planck/rev6
env QMK_HOME /root/qmk_firmware
entrypoint ["qmk"]
