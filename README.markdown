#Bivouac: Where push == deploy

Bivouac is a Sintra application for hosting and deploying rack compliant web applications.

Bivouac works by creating a git repository for a given app name in a subdomain of the domain the web server is running under. This allows 'git push' to be the deployment mechanism.

Born on 17 May, 2009 at Railscamp 5 in the Gold Coast Hinterland of Queensland, Australia via a collaboration between Martin Stannard, Michael Koukoullis and Keith Pitty with valued assistance from Phil Oye, Myles Byrne and Tim Lucas.

See it running at http://bivou.ac

## Requirements

* sinatra
* sinatra-authorization
* mysql
* nginx
* phusion passenger

## Installation

You'll need passenger installed:

> sudo gem install passenger

> sudo passenger-install-nginx-module

on osx : http://gist.github.com/123408

## Configuration

Added configration to nginx.conf files so it knows where to serve from:

 Ben's nginx scripts

## Running bivou.ac

## Gem Support

## Database Support

## Licence

This software is licensed under the MIT license.
