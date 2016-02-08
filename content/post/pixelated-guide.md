+++
author = "Cryptohack"
date = "2016-02-08T19:46:22+11:00"
draft = true
title = "The Cryptohacker's Guide to Pixelated"
+++

# What is [Pixelated](https://pixelated-project.org/)?
Decentralised, encrypted email made easy -- so easy that the end-user doesn't even have to know what PGP is.

It has three components:

0. Platform: Puppet scripts to install and configure Pixelated components; aims to provide a mail server that is easy to install and maintain, based on [LEAP](https://leap.se). We don't need to worry about this much right now.

0. [User Agent](https://github.com/pixelated/pixelated-user-agent): composed of JavaScript single page webapp using FlightJS, and a RESTful Python service. This is where Pixelated needs the most help. [Try it yourself](https://try.pixelated-project.org:8080/auth/login?next=%2F).

0. [Dispatcher](https://github.com/pixelated/pixelated-dispatcher): orchestrates multiple instances of the user agent (one per user) on a server and provides a login form to restrict access.


<iframe class="wistia_embed" name="wistia_embed" src="http://fast.wistia.net/embed/iframe/8tov3e9tnu" allowtransparency="true" frameborder="0" scrolling="no" width="480" height="298"></iframe><br/><a class="wistia-linkback" href="https://thoughtworks.wistia.com/medias/8tov3e9tnu">Pixelated Video Story</a>


-------------------------------------------------------------------------------------------
# Tech

We will focus on the user agent since this is where Pixelated needs the most help.

[Github](https://github.com/pixelated/pixelated-user-agent)


## Setup

  0. Install [Virtual Box](https://www.virtualbox.org/wiki/Downloads) and  [Vagrant](https://www.vagrantup.com/downloads.html).

  0. Clone the repo:
  ` git clone https://github.com/pixelated-project/pixelated-user-agent.git `

  0. Start the virtual machine:<br/>
  ` cd pixelated-user-agent ` <br/>
  `vagrant up`

  0. Log into the VM: <br/>
  ` vagrant ssh `

  0. Setup the project: <br/>
    `cd /vagrant/service`<br/>
    `./go setup`

  0. Create an account in the Devs provider:


  0. Run the user agent: <br/>
    `pixelated-user-agent --host 0.0.0.0 -lc /vagrant/service/pixelated/certificates/dev.pixelated-project.org.ca.crt`

    - Which provider do you want to connect to: <br/>
      `dev.pixelated-project.org`

    - What's your username registered on the provider: <br/>
      `username`

    - What's your username registered on the provider: <br/>
      `********`

    ![Connect to the provider using your credentials](/images/pixelated-guide-1.png)
    _You **will not** get any response if you connect successfully_

  0. Go to [http://localhost:3333/](http://localhost:3333/)

  All done!


-------------------------------------------------------------------------------------------

# Ok, now what?

[Tablero](https://pixboard.herokuapp.com/)

[Beginners' issues on Github](https://github.com/pixelated/pixelated-user-agent/blob/master/labels/Beginners)

[How to contribute](https://github.com/pixelated/pixelated-user-agent/blob/master/CONTRIBUTING.md)

*It'd be nice to have a low-ish-level walkthrough of the code here.*


-------------------------------------------------------------------------------------------
# Having troubles?

  - Documentation

    - [Podcast (25 mins)](https://soundcloud.com/thoughtworks/pixelated-why-secure-communication-is-essential): Overview of the project and the motivation behind it.

* Deep links to topics in the podcast would be good. I'll add some tonight. --Robin *

  - Community

    - [IRC](irc://irc.freenode.net/pixelated)
    
    - [Slack](https://cryptohack.slack.com/messages/pixelated/) (You have to sign up first [here](https://cryptohack.herokuapp.com/))

  - Contact the team

*Do we need this? Feels like noise:*
    [@PixelatedTeam](https://twitter.com/pixelatedteam)
    [team@pixelated-project.org](mailto:team@pixelated-project.org)
    (PGP Fingerprint: 504A 14EA 39DE 1800 B676 9619 FF0E A8AE D649 7991)


*posted by [pam](https://twitter.com/pamrucinque)*