---
title: "Let`s Encrypt With Docker"
date: 2018-05-22T17:58:42Z
publishDate: 2018-05-22T18:43:46Z
draft: false
tags: ["let's encrypt"]
---

Big THANK YOU to [Let's Encrypt](https://letsencrypt.org) for providing this service.

Assumptions:

* docker available on the target server
* port 80 open for inbound connections

```
$ sudo docker run -it --rm --name certbot \
  -p 80:80 \
  -v "/etc/letsencrypt:/etc/letsencrypt" \
  -v "/var/lib/letsencrypt:/var/lib/letsencrypt" \
  certbot/certbot certonly --standalone -d domanin.org \
  --text --agree-tos \
  --email admin@example.com \
  --server https://acme-v01.api.letsencrypt.org/directory \
  --rsa-key-size 4096 --verbose --renew-by-default \
  --preferred-challenges http
```
<!--more-->
Certificates can be found here:
`/etc/letsencrypt/live/domain.org/`

For tls/ssl certificate use `fullchain.pem` & for certificate key use `privkey.pem`

Sample source code available for download on [github](https://github.com/tecris/blog-samples/tree/master/letsencrypt-with-docker)
</br>
[Reference](https://certbot.eff.org/docs/install.html#running-with-docker)
