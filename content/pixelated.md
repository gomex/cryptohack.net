+++
date = "2016-02-23T10:40:00+11:00"
draft = false
title = "The Cryptohacker's Guide to Pixelated"
+++

[Pixelated](https://pixelated-project.org/) is decentralised, encrypted email made easy -- so easy that the user doesn't even have to know what [PGP](https://en.wikipedia.org/wiki/Pretty_Good_Privacy) is.

It has two components:

0. [User Agent](https://github.com/pixelated/pixelated-user-agent): composed of a JavaScript single page webapp using FlightJS, and a RESTful Python service. This is the web email interface that the user sees. It also manages cryptographic keys. It can run on the user's own computer, or be provided by a server to multiple users. [Try it yourself](https://try.pixelated-project.org:8080/auth/login?next=%2F). 

0. [Puppet Module](https://github.com/pixelated/puppet-pixelated): installs and configures Pixelated on a server; provides a mail server _platform_ that is easy to maintain -- based on [LEAP](https://leap.se) -- and a user agent in multi-user mode. 

This page will guide you through setting up a user agent on your own computer, which will connect to a remote platform (dev.pixelated-project.org).

<div class="center">
<iframe class="wistia_embed" name="wistia_embed" src="https://fast.wistia.net/embed/iframe/8tov3e9tnu" allowtransparency="true" frameborder="0" scrolling="no" width="480" height="298"></iframe><br/><a class="wistia-linkback" href="https://thoughtworks.wistia.com/medias/8tov3e9tnu">Pixelated Video Story (2 mins)</a>
</div>

  
# Setting up your development environment

This could take 30 to 60 minutes or more depending on your internet connection -- it will download about a gigabyte of data in total -- so we recommend getting to the `vagrant up` step and then listening to the podcast while things are downloading.

If you have any troubles, don't waste time -- [come and ask for help](#troubles).

<div class="center">
<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/212550680&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>
<a href="https://soundcloud.com/thoughtworks/pixelated-why-secure-communication-is-essential">Pixelated Podcast (25 mins)</a>
</div>


## Setup

0. Don't forget to open [#2nd-march-hacknight on Slack](https://cryptohack.slack.com/messages/2nd-march-hacknight/) (you'll have to [join first](https://cryptohack.herokuapp.com/)).

0. Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads) and  [Vagrant](https://www.vagrantup.com/downloads.html). In case of Windows, you will also need [Putty](http://www.putty.org/)

0. Clone the repo:
  ` git clone https://github.com/pixelated-project/pixelated-user-agent.git `

0. Start the virtual machine (downloads 600MB):<br/>
  ` cd pixelated-user-agent ` <br/>
  `vagrant up`

0. For Windows environment, convert `%USERPROFILE%\.vagrant.d\insecure_private_key`  to .ppk using PuTTYGen<br/>

0. Log into the VM (sets up the project, downloads a few hundred more megabytes): <br/>
  - For non windows environment - ` vagrant ssh `
  - For windows environment login using Putty using the following details <br/>
  *Hostname: 127.0.0.1* <br/>
  *Port: 2222* <br/>
  *Username: vagrant* <br/>
  *Password: vagrant*

0. Create an account on the development platform:
    - Ask for an invitation on [Slack: #2nd-march-hacknight](https://cryptohack.slack.com/messages/2nd-march-hacknight)<br/>
    *@robin @cam, @pamrucinque or @akjones will get you sorted*

    - Go to [https://dev.pixelated-project.org/](https://dev.pixelated-project.org/) and **Sign up**

0. Run the user agent: <br/>
    `pixelated-user-agent --host 0.0.0.0`

    - Which provider do you want to connect to: <br/>
      `dev.pixelated-project.org`

    - What's your username registered on the provider: <br/>
      `username` (the one you created in previous step)

    - Type your password: <br/>
      `********` (the one you created in previous step)

    ![Connect to the provider using your credentials](/images/pixelated-guide-1.png)
    _After 20-30 seconds, if the user agent starts up successfully, you will see this line in the output:_ `Done, the user agent is ready to be used`.

0. Go to [http://localhost:3333/](http://localhost:3333/). You should see a loading screen for a few seconds, then your inbox. If it sticks on the loading screen, check your terminal for errors, then [get help](#troubles).

You now have a user agent running on your local machine. 

Your address is &lt;username&gt;@dev.pixelated-project.org. You should be able to receive emails using this interface, and send emails to other users on the platform (e.g. robin4@dev.pixelated-project.org or pamr@dev.pixelated-project.org). Sending emails to other domains is currently broken owing to [bug #591](https://github.com/pixelated/pixelated-user-agent/issues/591).


-------------------------------------------------------------------------------------------

# Okay, now what?

Choose an issue from those [labelled "beginners" on GitHub](https://github.com/pixelated/pixelated-user-agent/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3ABeginners+) that sounds like it might be an easy place to start, add a comment on the issue and let us know on Slack that you are working on it. 

If it's not clear how to progress with the issue, or you need anything to be explained, come and [get help](#troubles).

Check the [user-agent readme](https://github.com/pixelated/pixelated-user-agent/blob/master/README.md) for pointers on how to run tests, etc. Check the [contribution guide](https://github.com/pixelated/pixelated-user-agent/blob/master/CONTRIBUTING.md) before you submit a pull request.

-------------------------------------------------------------------------------------------
# <a name="troubles"></a>Come and get help

You will probably run into problems. Don't waste time -- some of the core Pixelated team, and other Cryptohackers, are here to help. Come and ask your questions in [#2nd-march-hacknight on Slack](https://cryptohack.slack.com/messages/2nd-march-hacknight/) (you'll have to [join first](https://cryptohack.herokuapp.com/)). 

-------------------------------------------------------------------------------------------
# Common issues

We'll add common issues to this page -- feel free to submit a [pull request](https://github.com/cryptohack/cryptohack.net/blob/master/content/post/pixelated-guide.md) if you can make anything on this page clearer.

## How do I see the result of my changes?

From the [readme](https://github.com/pixelated/pixelated-user-agent/blob/master/README.md):

* For all Python changes, you will need to kill (`Ctrl-C`) the server and run `pixelated-user-agent --host 0.0.0.0` again.
* For most JavaScript or HTML changes, you will just need to reload the browser. For changes involving CSS or Handlebars templates, you will also need to run: `cd /vagrant/web-ui && ./go build`

## I think I might be able to hack together a quick-and-dirty lo-fi solution for the issue I’m working with... what do I do?
 
Do it the easy way first, and submit a pull request as a “work in progress” as soon as you have a quick-and-dirty solution (or even an unfinished solution) — that means you can get feedback from the core developers about whether you're heading in the right direction sooner rather than later.  Include “WIP” (work in progress) in the description of your pull request and ask for review, or feedback on anything specific.

*Posted by [Pam](https://twitter.com/pamrucinque) and [Robin](https://twitter.com/rdoh)*
