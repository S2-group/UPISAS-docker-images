# Workspaces Images
This repository contains dockerfiles to build various exemplars for use with UPISAS.
Each of these images is based off one of the [**Workspaces Core Images**](https://github.com/kasmtech/workspaces-core-images?utm_campaign=Github&utm_source=github) which contain the necessary wiring to work with noVNC to connect through your web browser.


For more information about building custom images please review the  [**How To Guide**](https://kasmweb.com/docs/latest/how_to/building_images.html?utm_campaign=Github&utm_source=github)

The Kasm team publishes applications and desktop images for use inside the platform. More information, including source can be found in the [**Default Images List**](https://kasmweb.com/docs/latest/guide/custom_images.html?utm_campaign=Github&utm_source=github)


# Manual Deployment

To build the provided images, for example for BSN:

    sudo docker build -t <your-docker-username>/bsnexemplar:dev -f dockerfile-kasm-ubuntu-bionic-desktop-bsn .

```
sudo docker run --rm  -it --shm-size=512m -p 6901:6901 -e VNC_PW=password <your-docker-username>/bsnexemplar:dev
```

The container is now accessible via a browser : `https://<IP>:6901`

 - **User** : `kasm_user`
 - **Password**: `password`
