# AirFlow install

2018.10.22

## Docker

Dockerrel sikerült felrakni az AirFlow-t Windowson. 

### Környezet

* **Windows 10** (64 bites)
  * Virtualizálás engedélyezve
  * Hyper-V engedélyezve
  * VirtualBox nem volt előzőleg telepítve
* **Docker for Windows CE** (Version 18.06.1-ce-win73 (19507) stable https://store.docker.com/editions/community/docker-ce-desktop-windows) 
  * Linux contairekkel
* **Dockerizált AirFlow** (https://github.com/puckel/docker-airflow)

### Irodalom

**Windows containerek**:

- https://docs.microsoft.com/hu-hu/virtualization/windowscontainers/about/index
- https://docs.microsoft.com/hu-hu/virtualization/windowscontainers/quick-start/quick-start-windows-10

**Docker for Windows telepítése és kezdeti lépések**:

- https://docs.docker.com/docker-for-windows/install/
- https://github.com/docker/labs/blob/master/windows/windows-containers/Setup.md
- https://docs.docker.com/docker-for-windows/

**Dockerizált AirFlow telepítése**:

* http://intellectualgambols.blogspot.com/2017/09/how-to-run-airflow-in-windows-with.html

## Windows

Windows install sikertelen volt:

**Első probléma**: **Python 3.7**-el nem fut le a telepítő az `async` keyword változóként történő használata miatt syntax errort dobott a telepítõ. Ld. még:
https://github.com/pypa/pipenv/issues/956

**Második probléma**: Elsőre **Python 3.6.7** alatt is hibát dobott a telepítő. Be kellett állítani a következőt:

```sh
set SLUGIFY_USES_TEXT_UNIDECODE=yes
```

Miután a fentit beállítottam elszabadult a "pokol". Relatíve gyorsan kiderült, hogy az AirFow kb. nem fut Windowson:

[https://lists.apache.org/thread.html/%3CCAEcbTX30m_Lu9C7dxbkZH5qHqDHVbbb7dhjxGzPkt14iEJk3pA@mail.gmail.com%3E](https://lists.apache.org/thread.html/%3CCAEcbTX30m_Lu9C7dxbkZH5qHqDHVbbb7dhjxGzPkt14iEJk3pA@mail.gmail.com%3E)

ehelyett a Dockert javasolják:

https://github.com/puckel/docker-airflow 