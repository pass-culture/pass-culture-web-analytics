# Matomo (formerly Piwik) - matomo.org

[![Latest Stable Version](https://poser.pugx.org/piwik/piwik/v/stable)](https://matomo.org/download/)
[![Latest Unstable Version](https://poser.pugx.org/piwik/piwik/v/unstable)](https://packagist.org/packages/piwik/piwik)
[![License](https://poser.pugx.org/piwik/piwik/license)](https://matomo.org/free-software/)

## Code Status

[![Build Status](https://travis-ci.org/matomo-org/matomo.svg?branch=master)](https://travis-ci.org/matomo-org/matomo/branches)
[![Percentage of issues still open](http://isitmaintained.com/badge/open/matomo-org/matomo.svg)](http://isitmaintained.com/project/matomo-org/matomo "Percentage of issues still open")

## Note about this repository

This repository is a originally fork created by Scalingo in order to ensure easy deployment on the hosting platform.

Three additional plugins have been added additionally to the standard distribution:

* EnvironmentVariables: To let you configure your instance through the environment and not through files to respect the 12 factor. [https://github.com/matomo-org/plugin-EnvironmentVariables](https://github.com/matomo-org/plugin-EnvironmentVariables)
* DbCommands: Written by us to initialize the database with a console command: `database:create-tables`
* AdminCommands: Written by us to create a super user or a site: `admin:create-superuser` or `admin:create-site`

### Configuration:

The following env vars must be set in a file given to matomo :
```
MATOMO_INIT_SITE_NAME=pass-culture
MATOMO_INIT_SITE_URL=pass-culture.beta.gouv.fr
MATOMO_INIT_USER_EMAIL=email@pass-culture.fr
MATOMO_INIT_USER_LOGIN=user_login
MATOMO_INIT_USER_PASSWORD=secure_password
```

* `MAIL_URL`: URL of the mailserver which is going to serve the emails of Matomo (ie. smtp://user:password@in.mailjet.com:587)

Any configuration of Matomo can be modified through the environment following this scheme: `MATOMO_SECTION_PROPERTY=VALUE`

As a real life example: `MATOMO_GENERAL_SALT=377efc193ca086` is replacing:

```ini
[General]
salt=377efc193ca086
```

To deploy Matomo on scalingo, please use the init_new_instance.sh script and provide an application name and a user password.
```
./init_new_instance.sh -n matomo -f path/to/crendential/file
```

## Description

Matomo is the leading Free/Libre open analytics platform.

Matomo is a full featured PHP MySQL software program that you download and install on your own webserver.
At the end of the five minute installation process, you will be given a JavaScript code.
Simply copy and paste this tag on websites you wish to track and access your analytics reports in real time.

Matomo aims to be a Free software alternative to Google Analytics and is already used on more than 1,400,000 websites. Privacy is built-in!

## Mission Statement

> « To create, as a community, the leading international open source digital analytics platform, that gives every user full control of their data. »

Or in short:
> « Liberate Web Analytics »

## License

Matomo is released under the GPL v3 (or later) license, see [misc/gpl-3.0.txt](misc/gpl-3.0.txt)


## Requirements

  * PHP 5.5.9 or greater
  * MySQL version 5.5 or greater, or MariaDB
  * PHP extension pdo and pdo_mysql, or the MySQLi extension.
  * Matomo is OS / server independent

See https://matomo.org/docs/requirements/

## Install

  * Upload matomo to your webserver
  * Point your browser to the directory
  * Follow the steps
  * Add the given javascript code to your pages
  * (You may also generate fake data to experiment, by enabling the plugin VisitorGenerator)

See https://matomo.org/docs/installation/

## Free trial

If you do not have a server or don't want to host yourself you can use our Matomo Cloud partner service (30 day free trial): https://www.innocraft.cloud/

## Online Demo

Check out the online demo for Matomo at [demo.matomo.org](https://demo.matomo.org/)

## Changelog

For the list of all tickets closed in the current and past releases, see https://matomo.org/changelog/. For the list of technical changes in the Matomo platform, see [https://developer.matomo.org/changelog](https://developer.matomo.org/changelog).

## Get involved!

We believe in liberating Web Analytics, providing a free platform for simple and advanced analytics. Matomo was built by dozens of people like you,
and we need your help to make Matomo better… Why not participate in a useful project today? [Learn how you can contribute to Matomo.](https://matomo.org/get-involved)

## Quality Assurance

The Matomo project uses an ever-expanding comprehensive set of thousands of unit tests and hundreds of automated integration tests, system tests, JavaScript tests, and screenshot UI tests, running on a continuous integration server as part of its software quality assurance. [Learn more](https://matomo.org/qa/)

We use [BrowserStack.com](https://www.browserstack.com/) testing tool to help check the Matomo user interface is compatible with many browsers.


## Security

Security is a top priority at Matomo. As potential issues are discovered, we validate, patch and release fixes as quickly as we can. We have a security bug bounty program in place that rewards researchers for finding security issues and disclosing them to us.

[Learn more](https://matomo.org/security/) or check out our [HackerOne program](https://hackerone.com/matomo).

## Support for Matomo

For **Free support**, post a message in our community forums: [forum.matomo.org](https://forum.matomo.org/)

For **Professional paid support**, send a message to our network of Matomo professionals: [matomo.org/support](https://matomo.org/contact/)

## Contact

Website: [matomo.org](https://matomo.org)

About us: [matomo.org/team/](https://matomo.org/team/)

Contact us: [matomo.org/contact/](https://matomo.org/contact/)


## More information

What makes Matomo unique from the competition:

  * Real-time web analytics reports: in Matomo, reports are by default generated in real time.
    For high traffic websites, you can choose the frequency for reports to be processed.

  * You own your web analytics data: since Matomo is installed on your server, the data is stored in your own database and you can get all the statistics using the powerful Matomo Analytics API.

  * Matomo is a Free Software which can easily be configured to respect your visitors' privacy.

  * Modern, easy to use User Interface: you can fully customize your dashboard, drag and drop widgets and more.

  * Matomo features are built inside plugins: you can add new features and remove the ones you don’t need.
    You can build your own web analytics plugins or hire a consultant to have your custom feature built-in Matomo

  * A vibrant international Open community of more than 200,000 active users (tracking even more websites!)

  * Advanced Web Analytics capabilities such as E-commerce Tracking, Goal tracking, Campaign tracking,
    Custom Variables, Email Reports, Custom Segment Editor, Geo Location, Real-time maps, and more!

Documentation and more info on https://matomo.org
