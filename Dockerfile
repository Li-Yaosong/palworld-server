FROM liyaosong/steamcmd:ubuntu-24
# 安装游戏服务器
# Install game server
RUN steamcmd +login anonymous +app_update 2394010 validate +quit
#设置容器入口点
# Set container entrypoint
ENTRYPOINT [ "/home/steam/.local/share/Steam/steamapps/common/PalServer/PalServer.sh" ]
# 暴露游戏服务器udp端口
# Expose game server UDP port
EXPOSE 8211/udp
