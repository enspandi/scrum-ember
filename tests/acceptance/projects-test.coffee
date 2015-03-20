`import Ember from 'ember'`
`import { module, test } from 'qunit'`
`import startApp from '../helpers/start-app'`

application = null

module 'Acceptance: Projects',
  beforeEach: ->
    application = startApp()
    return

  afterEach: ->
    Ember.run application, 'destroy'

test 'visiting /', (assert) ->
  visit '/'
  andThen ->
    click('.js-create-project')
    andThen ->
      assert.equal currentPath(), 'projects/new'
