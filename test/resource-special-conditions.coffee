should = require("should")
request = require("supertest")
app = undefined

describe "Resource special conditions", ->
  describe "use function keyword", ->
    before (done) ->
      require './support/resource-use-function-keyword'
      app = require('../')._app
      done()
    it "should work when $filter it", (done) ->
      request(app)
        .post('/odata/resource-use-function-keyword')
        .send
          year: 2015
        .expect(201)
        .expect('Content-Type', /json/)
        .end (err, res) ->
          return done(err)  if(err)
          request(app)
            .get('/odata/resource-use-function-keyword?$filter=year eq 2015')
            .expect(200)
            .expect('Content-Type', /json/)
            .end (err, res) ->
              return done(err)  if(err)
              res.body.value.length.should.be.above(0)
              done()

  describe "use custom id", ->
    before (done) ->
      require './support/resource-use-custom-id'
      app = require('../')._app
      done()
    it "should work", (done) ->
      request(app)
        .post('/odata/resource-use-custom-id')
        .send
          id: 100
        .expect(201)
        .expect('Content-Type', /json/)
        .end (err, res) ->
          return done(err)  if(err)
          request(app)
            .get('/odata/resource-use-custom-id')
            .expect(200)
            .expect('Content-Type', /json/)
            .end (err, res) ->
              return done(err)  if(err)
              res.body.value[0].id.should.be.equal(100)
              done()
