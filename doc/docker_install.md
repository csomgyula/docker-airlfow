# Docker install

2018.10.23


Az AirFow kb. nem fut Windowson (ld. [airflow_install.md](airflow_install.md)), ehelyett a Dockert javasolják, ld.:

[https://lists.apache.org/thread.html/%3CCAEcbTX30m_Lu9C7dxbkZH5qHqDHVbbb7dhjxGzPkt14iEJk3pA@mail.gmail.com%3E](https://lists.apache.org/thread.html/%3CCAEcbTX30m_Lu9C7dxbkZH5qHqDHVbbb7dhjxGzPkt14iEJk3pA@mail.gmail.com%3E)

## Környezet

* **Windows 10** (64 bites)
  * Virtualizálás engedélyezve
  * Hyper-V engedélyezve
  * VirtualBox nem volt előzőleg telepítve
* **Docker for Windows CE** (Version 18.06.1-ce-win73 (19507) stable https://store.docker.com/editions/community/docker-ce-desktop-windows) 
  * Linux contairekkel
* **Dockerizált AirFlow** (https://github.com/puckel/docker-airflow)

## Irodalom

**Windows containerek**:

- https://docs.microsoft.com/hu-hu/virtualization/windowscontainers/about/index
- https://docs.microsoft.com/hu-hu/virtualization/windowscontainers/quick-start/quick-start-windows-10

**Docker for Windows telepítése és kezdeti lépések**:

- https://docs.docker.com/docker-for-windows/install/
- https://github.com/docker/labs/blob/master/windows/windows-containers/Setup.md
- https://docs.docker.com/docker-for-windows/

**Dockerizált AirFlow telepítése**:

* http://intellectualgambols.blogspot.com/2017/09/how-to-run-airflow-in-windows-with.html