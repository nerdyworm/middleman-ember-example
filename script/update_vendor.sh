#!/bin/bash

set -e

VENDOR=source/javascripts/vendor

mkdir -p $VENDOR

wget -O $VENDOR/jquery.js http://code.jquery.com/jquery-2.0.0.js
wget -O $VENDOR/handlebars.js https://raw.github.com/wycats/handlebars.js/1.0.0/dist/handlebars.js
wget -O $VENDOR/ember-latest.js http://builds.emberjs.com.s3.amazonaws.com/ember-latest.js
wget -O $VENDOR/ember-data.js http://builds.emberjs.com.s3.amazonaws.com/ember-data-latest.js
