+++
date = "2015-12-09T16:23:50+11:00"
draft = false
title = "Let's Encrypt is great for the privacy movement"

+++

[Let's Encrypt](https://letsencrypt.org/) has recently announced it has entered public beta. This is great news for the privacy movement.

Let's Encrypt is a Certificate Authority[1] that provides free (as in no cost), **trusted** certificates, and tools that automate getting a certificate and making sure it is installed and configured so that it provides the best security to users.

This is important as it means **anyone** running a website can sign up for a certificate and secure the traffic between their site and the people using it, which ensures data that people share with the site will be kept **private**.

Even community organisations like Cryptohack can now afford HTTPS -- check it out, we're using HTTPS!

It also means that as technologists, we have no more excuses for not configuring our websites to use HTTPS. If your site doesn't have an HTTPS interface, now is the time! [Go forth and encrypt!](https://letsencrypt.readthedocs.org/en/latest/)

[1] A certificate authority (CA) issues digital certificates. In the context of HTTPS, a certificate verifies that the website is who it says it is. Web browsers are configured to trust particular CAs, and if we're visiting a site with a certificate issued by one of these trusted CAs, our browser will show a lock indicating it trusts the certificate, otherwise it will barf and tell us the certificate is not trusted. If we don't trust the identity of a website, we should definitely not trust it with our data!

*Posted by [andrew](https://twitter.com/whereismytaco)*
