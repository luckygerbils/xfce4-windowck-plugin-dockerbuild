## Building

```
docker build -t xfce4-widowckplugin-dockerbuild:latest https://github.com/luckygerbils/xfce4-windowck-plugin-dockerbuild.git
docker cp $(docker create xfce4-widowckplugin-dockerbuild:latest):/xfce4-windowck-plugin_0.4.5_amd64.deb .
```
