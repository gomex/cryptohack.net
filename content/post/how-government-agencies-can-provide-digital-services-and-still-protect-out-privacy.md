+++
author = "andrew"
date = "2016-09-07T10:21:00+10:00"
draft = true
title = "How governments can provide digital services and still protect our privacy"
+++

The Australian Bureau of Statistics (ABS) has decided that census data should no longer be anonymous, and our names and addresses should be linked deterministically to our responses into the future. This is a [bad](/post/census.html) [idea](https://3583bytesready.net/2016/08/11/census-problems-slk-security-explained/). Not that this is [the](https://www.theguardian.com/business/grogonomics/2016/aug/11/lesson-of-censusfail-continued-funding-cuts-mean-agencies-cant-do-their-job) [only](https://twitter.com/riskybusiness/status/763605906047107073) 
[reason](https://twitter.com/Qldaah/status/763307636687196160) the 2016 census turned into [#censusfail](https://twitter.com/search?q=%23censusfail).

In the lead up to census day, there were many discussions between folks concerned about their privacy about what we could do to protect it. The consensus was that the best way to protect our privacy would be to complete the paper version rather than the online form so we could omit our names and addresses. 

I believe in the power of technology to make things better. That’s why I became a software developer. I’ve spent my career building technology to help organisations become more efficient, so encouraging people to use the paper form felt like a backwards step (even if it was a necessary one given the circumstances). Coupled with the technical mishaps that accompanied the online census, I began to think about what would it take a government to become more [“digital”](https://www.youtube.com/watch?v=KuTSAeFhdZU) - to successfully govern and provide services online. Organisations like the ABS could save heaps of money by doing what they do online, and there should be no need for us to compromise our privacy in order to participate online. 

I want to move the discussion beyond what we shouldn’t do, and start talking about what we could do, to take advantage of new technologies that would enhance efficiency and convenience and still give us control over our data. 

So, what would it take?

## Legislation

Online data stores are easy to abuse. To enable a digital government, we need strong legal guarantees of our privacy.

The legislation should ensure: 

  0. I own my data. This means that I have ultimate authority over where my data goes and who can access it.
  0. My data is private by default. When I provide my data to an agency, I am providing access **only** to that agency. If one agency has my data, and another agency would like to access that data, then the decision of whether or not to share my data is **mine**.
  0. I have the right to know who has accessed my data, and for what reason. We need to protect against [potential abuse](http://mobile.abc.net.au/news/20160.080.20/qld0.policeman0.investigation0.allegedly0.details0.expartner0.to0.mate/7769418)
  0. I have the right to revoke access to all or some parts of the data I provided to an agency. When I revoke access it must be expunged from the agency’s systems.
  0. There should be an **independent** body that safeguards my privacy. It should provide a way to lodge complaints against government agencies, and have the power to investigate those complaints.

## The right technology

  0. The technology must provide practical implementations of the legislation such as a private, online dashboard so I can see where all my data is, and recent activities relating to my data, and I can revoke access to my data for the agencies I choose with the click of a button.
  0. The systems must be decentralised and independent, but able to talk to each other. Like any successful modern organisation, government agencies need to innovate, and this means that they need to be able experiment with new technologies and approaches. If each agency owns its technology stack, it will be much easier to create environments that foster innovation (c.f. [microservices](http://martinfowler.com/articles/microservices.html)). Decentralisation also means that each agency has their own data stores, so they would be able to protect our data more effectively (including from other agencies). 
  0. The systems must be backed by strong cryptography. We know [good crypto still works](https://techcrunch.com/2013/06/17/encrypting-your-email-works-says-nsa-whistleblower-edward-snowden/). It doesn’t guarantee privacy, but we can’t have privacy without it. 
  0. There must be a distributed, immutable record of data flows, and access records, so that I can audit who has accessed mydata.

With the right technology and legislation combined we could begin to trust in the system, and benefit from the government’s newfound affinity for technology.

## Case study: Estonia

I first heard about Estonia’s relationship with technology after reading [this article](https://www.lawfareblog.com/e-residency-estonia-part-i-wherein-i-apply-digitally-betray-my-country) about becoming an “e-resident” of Estonia. This struck me as an interesting idea. My initial cynical reaction was that this was a gimmick to make Estonia seem like a great place to start a tech business. But this is not the case.

Estonia advertises itself as a [“digital society”](https://e-estonia.com/the-story/the-story-about-estonia/) and the Government offers **a lot** of services online. You can perform almost all your interactions with the Estonian Government online, including [obtaining and fulfilling prescriptions](https://e-estonia.com/the-story/digital-society/healthcare/), [completing tax returns](https://e-estonia.com/the-story/digital-society/financial-services/), [interacting with utility providers](https://e-estonia.com/the-story/digital-society/utilities/), [setting up businesses](https://e-estonia.com/the-story/digital-society/business/), and even [voting](https://e-estonia.com/component/i-voting/) (although [experts](https://theconversation.com/can-we-trust-online-voting-616) believe online voting to be a [risky](https://www.eff.org/deeplinks/2015/04/new-south-wales-attacks-researchers-who-warned-internet-voting-vulnerabilities) [endeavour](https://www.schneier.com/blog/archives/2014/11/hacking_interne.html)).

Individuals in Estonia have a very strong legal right to privacy. [The Personal Data Protection Act (PDPA)](https://www.riigiteataja.ee/en/eli/512112013011/consolide) opens with a very clear statement that it aims to protect the right to “inviolability of private life” (compared to the [Australian Privacy Act](https://www.legislation.gov.au/Details/C2016C00838) which does not have nearly as strong an opening). The PDPA also lays out legal principles that must be upheld when collecting personal information, such as that personal data shall only be collected to the extent necessary for specific purposes.

The effect of the Act means that if you submit personal information to one government agency for a specific purpose, it can only be used for that purpose. Citizens are in control of their data, and can log into an online service to see who is accessing their personal information.

The technology that drives it all is also quite interesting. Each government department (as well as businesses and individuals) maintains its own system, but all communicate via the [X-Road](https://e-estonia.com/component/x-road/). The X-Road is supposed to let all these disparate databases share information, but citizens still maintain control over the data in all the different systems. The Estonian Government has also started to take advantage of [blockchain](https://en.wikipedia.org/wiki/Blockchain_(database)) technologies ([source](http://bravenewcoin.com/news/e-estonia-initiative-progresses-with-blockchain-partnerships/)) to protect citizens’ data from tampering.

[Experts](https://www.privacyinternational.org/sites/default/files/Estonia%20UPR%20Stakeholdersubmission_FINAL.pdf) say Estonia’s privacy protections aren’t perfect, but there is a lot that we can learn from their approach. 

Estonia is pushing the boundaries of how a government can use technology to benefit a country and its citizens, and operate within a framework that protects everyone’s privacy. 

Perhaps with systems and legal protections like Estonia’s, we can finally leave behind the dark ages of paper forms and Australia Post for #census2021.


## Sources:

  - https://www.lawfareblog.com/e-residency-estonia-part-i-wherein-i-apply-digitally-betray-my-country
  - http://estonianworld.com/security/right-mix-estonia-ensures-privacy-access-e-services-digital-age/
  - http://www.theregister.co.uk/2015/06/02/estonia/
  - https://e-estonia.com/the-story/the-story-about-estonia/
  - http://www.theatlantic.com/international/archive/2014/01/lessons-from-the-worlds-most-tech-savvy-government/283341/
  - https://www.riigiteataja.ee/en/eli/512112013011/consolide
  - https://www.privacyinternational.org/sites/default/files/Estonia%20UPR%20Stakeholdersubmission_FINAL.pdf

*Posted by [Andrew](https://twitter.com/whereismytaco)*
