# Netflix Wrangler

A Firefox extension that gives you more control over how Netflix displays its
 offerings. 
 
 * Show ratings without mouseover
 * Sort by rating or year
 * Hide:
    * watched
    * thumbs down
    * thumbs up
    * no match percentage
    * genre
    * maturity ratings etc.

# How to run unit tests

TBD

# How to manually test locally

1. Open Firefox to about:debugging
1. Click 'This Firefox'
1. Click 'Load Temporary Add-on...'
1. Choose the `manifest.json` file from this repo.

The add-on should be installed. Make any changes you wish to test and redo the
 steps above to see them in the browser.
 
# Check code formatting with ESLint

This requires [NodeJS](https://nodejs.org/en/) and [yarn](http://yarnpkg.com/).

* Change into the example directory and run `yarn install` to install all
  dependencies.
* Execute `yarn run lint` to view a report of any coding errors.