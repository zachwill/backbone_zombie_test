###
  A simple example Backbone.js test. Inspired by the following Stack Overflow
  question:  http://stackoverflow.com/questions/7410920/
###

assert = require 'assert'
vows = require 'vows'
zombie = require 'zombie'

site = 'http://documentcloud.github.com/backbone/examples/todos/index.html'

vows.describe('Testing the Backbone.js Todos app')
.addBatch
  'when first visiting the site':
    topic: ->
      browser = new zombie(debug: true, site: site)
      browser.on 'error', (error) -> console.log error.stack
      browser.visit '', @callback

    'we should see an empty todo list': (error, browser, status) ->
      html = browser.html('#todo-list')
      expected = '<ul id="todo-list"></ul>'
      assert.equal html, expected

    'jQuery should be global function': (error, browser, status) ->
      jquery = browser.evaluate('jQuery instanceof Function')
      assert.ok jquery

.export(module)
