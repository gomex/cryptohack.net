+++
author = "Cryptohack"
date = "2016-02-09T13:46:22+11:00"
draft = false
title = "10th February Hacknight -- Welcome"
+++

First things first, please sign in and say hello to the group on [#10th-feb-hacknight](https://cryptohack.slack.com/messages/10th-feb-hacknight). You'll need to [join](https://cryptohack.herokuapp.com) first.

This is a worldwide virtual hack night, starting 10th February at [6:30pm AEDT (UTC+11)](https://www.timeanddate.com/worldclock/fixedtime.html?msg=Cryptohack+Virtual+Hack+Night&iso=20160210T1830&p1=152). Come and work on whatever privacy tool you think needs our help, or join us in focusing on [Pixelated](https://pixelated-project.org) -- the rest of this page is intended to help you get up and running with that project.

# The Cryptohacker's Guide to Pixelated
[Pixelated](https://pixelated-project.org/) is decentralised, encrypted email made easy -- so easy that the user doesn't even have to know what [PGP](https://en.wikipedia.org/wiki/Pretty_Good_Privacy) is.

It has three components:

0. [User Agent](https://github.com/pixelated/pixelated-user-agent): composed of JavaScript single page webapp using FlightJS, and a RESTful Python service. This is where Pixelated needs the most help. [Try it yourself](https://try.pixelated-project.org:8080/auth/login?next=%2F).

0. [Dispatcher](https://github.com/pixelated/pixelated-dispatcher): orchestrates multiple instances of the user agent (one per user) on a server and provides a login form to restrict access.

0. [Platform](https://github.com/pixelated/puppet-pixelated): Puppet scripts to install and configure Pixelated components; aims to provide a mail server that is easy to install and maintain, based on [LEAP](https://leap.se). We don't need to worry about this much right now.

<div class="center">
<iframe class="wistia_embed" name="wistia_embed" src="http://fast.wistia.net/embed/iframe/8tov3e9tnu" allowtransparency="true" frameborder="0" scrolling="no" width="480" height="298"></iframe><br/><a class="wistia-linkback" href="https://thoughtworks.wistia.com/medias/8tov3e9tnu">Pixelated Video Story (2 mins)</a>
</div>

  
# Setting up your development environment

This could take 30 to 60 minutes or more depending on your internet connection -- it will download about a gigabyte of data in total -- so we recommend getting to the `vagrant up` step and then listening to the podcast while things are downloading.

If you have any troubles, don't waste time -- [come and ask for help](#troubles).

<div class="center">
<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/212550680&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>
<a href="https://soundcloud.com/thoughtworks/pixelated-why-secure-communication-is-essential">Pixelated Podcast (25 mins)</a>
</div>


## Setup

0. Don't forget to join [#10th-feb-hacknight on Slack](https://cryptohack.slack.com/messages/10th-feb-hacknight/) (you'll have to [join first](https://cryptohack.herokuapp.com/)).

0. Install [Virtual Box](https://www.virtualbox.org/wiki/Downloads) and  [Vagrant](https://www.vagrantup.com/downloads.html).

0. Clone the repo:
  ` git clone https://github.com/pixelated-project/pixelated-user-agent.git `

0. Start the virtual machine (downloads 600MB):<br/>
  ` cd pixelated-user-agent ` <br/>
  `vagrant up`

0. Log into the VM: <br/>
  ` vagrant ssh `

0. Setup the project (downloads a few hundred more megabytes): <br/>
    `cd /vagrant/service`<br/>
    `./go setup`

0. Create an account on the development platform:
    - Ask for an invitation on [Slack: #10th-feb-hacknight](https://cryptohack.slack.com/messages/10th-feb-hacknight)<br/>
    *@robin @cam or @pamrucinque will get you sorted*

    - Go to [https://dev.pixelated-project.org/](https://dev.pixelated-project.org/) and **Sign up**

0. Run the user agent: <br/>
    `pixelated-user-agent --host 0.0.0.0 -lc /vagrant/service/pixelated/certificates/dev.pixelated-project.org.ca.crt`

    - Which provider do you want to connect to: <br/>
      `dev.pixelated-project.org`

    - What's your username registered on the provider: <br/>
      `username` (the one you created in previous step)

    - Type your password: <br/>
      `********` (the one you created in previous step)

    ![Connect to the provider using your credentials](/images/pixelated-guide-1.png)
    _If the user agent starts up successfully, you will **not** see any other output._

0. Go to [http://localhost:3333/](http://localhost:3333/). You should see a loading screen for a few seconds, then your inbox. If it sticks on the loading screen, check your terminal for errors, then [get help](#troubles).

You now have a user agent running on your local machine. You should be able to send and receive emails using this interface -- your address is &lt;username&gt;@dev.pixelated-project.org.


-------------------------------------------------------------------------------------------

# Okay, now what?

Choose an issue from those [labelled "beginners" on Github](https://github.com/pixelated/pixelated-user-agent/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3ABeginners+) that sounds like it might be an easy place to start, add a comment on the issue and let us know on Slack that you are working on it. 

*We will add a shortlist of issues here soon.*

If it's not clear how to your issue, or you need anything to be explained, come and [get help](#troubles).

Check the [user-agent readme](https://github.com/pixelated/pixelated-user-agent/blob/master/README.md) for pointers on how to run tests, etc. Check the [contribution guide](https://github.com/pixelated/pixelated-user-agent/blob/master/CONTRIBUTING.md) before you submit a pull request.

-------------------------------------------------------------------------------------------
# <a name="troubles"></a>Come and get help

You will probably run into problems. Don't waste time -- some of the core Pixelated team, and other Cryptohackers, are here to help. Come and ask your questions in [#10th-feb-hacknight on Slack](https://cryptohack.slack.com/messages/10th-feb-hacknight/) (you'll have to [join first](https://cryptohack.herokuapp.com/)). 

We'll add common issues to this page -- feel free to submit a [pull request](https://github.com/cryptohack/cryptohack.net/blob/master/content/post/pixelated-guide.md) if you can make anything on this page clearer.

*Posted by [Pam](https://twitter.com/pamrucinque) and [Robin](https://twitter.com/rdoh)*