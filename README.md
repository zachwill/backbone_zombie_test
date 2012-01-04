A simple [Backbone.js](http://documentcloud.github.com/backbone/) test
using [Vows](http://vowsjs.org/) and the
[Zombie.js](http://zombie.labnotes.org/) headless browser.

Inspired by [this Stack Overflow
question](http://stackoverflow.com/questions/7410920/).


Usage
-----

Install the dependencies (if you don't already have them), and then
simply run the tests.

    npm install
    vows test.coffee

In order to see the specs, you can run the tests with the `--spec` flag.

    vows test.coffee --spec
