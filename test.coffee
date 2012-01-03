###
  A simple example Backbone.js test. Inspired by the following Stack Overflow
  question: http://stackoverflow.com/questions/7410920/
###

assert = require 'assert'
vows = require 'vows'
zombie = require 'zombie'

site = 'http://documentcloud.github.com/backbone/examples/todos/index.html'

vows.describe('Zombie tests on a Backbone app')
.addBatch
  'Navigate a Todo list':
    topic: ->
      browser = new zombie(debug: true)
      browser.on 'error', (error) -> console.log error.stack
      browser.visit site, @callback

    'Can see a todo list': (error, browser, status) ->
      expected = '<ul id="todo-list"></ul>'
      html = browser.html('#todo-list')
      assert.equal html, expected

.export(module)
