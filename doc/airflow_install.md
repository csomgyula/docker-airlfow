# AirFlow install

2018.10.22

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