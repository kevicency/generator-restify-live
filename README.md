# generator-restify-live [![Build Status](https://secure.travis-ci.org/kmees/generator-restify-live.png?branch=master)](https://travis-ci.org/kmees/generator-restify-live)
> [Yeoman](http://yeoman.io) generator for [node-restify](http://mcavage.me/node-restify/) with [LiveScript](http://gkz.github.io/LiveScript/).

## Getting started

If you don't know about [Yeoman](http://yeoman.io) read the yeoman section below !
Already enlightened? These commands get you up and running!

  * Create and move to a direcotry for the project

    `mkdir my-api && cd my-api` 
  *  Install this generator

    `npm install generator-restify-live`
  * Run the generator and follow the steps

    `yo restify-live`

## Running the server

As simple as `node start` or `node ./index.js`.

You can also run the `./index.js` directly but this requires [nodemon](https://github.com/remy/nodemon).


## Running the tests

Unit Tests: `npm test` or `grunt test` (or `grunt test:unit`)

System Tests: `grunt test:system`

Continuous (unit) Testing: `grunt test watch`


## Yeoman

### What is Yeoman?

Trick question. It's not a thing. It's this guy:

![](http://i.imgur.com/JHaAlBJ.png)

Basically, he wears a top hat, lives in your computer, and waits for you to tell him what kind of application you wish to create.

Not every new computer comes with a Yeoman pre-installed. He lives in the [npm](https://npmjs.org) package repository. You only have to ask for him once, then he packs up and moves into your hard drive. *Make sure you clean up, he likes new and shiny things.*

```
$ npm install -g yo
```

### Yeoman Generators

Yeoman travels light. He didn't pack any generators when he moved in. You can think of a generator like a plug-in. You get to choose what type of application you wish to create, such as a Backbone application or even a Chrome extension.

To install generator-restify-live from npm, run:

```
$ npm install -g generator-restify-live
```

Finally, initiate the generator:

```
$ yo restify-live
```

### Getting To Know Yeoman

Yeoman has a heart of gold. He's a person with feelings and opinions, but he's very easy to work with. If you think he's too opinionated, he can be easily convinced.

If you'd like to get to know Yeoman better and meet some of his friends, [Grunt](http://gruntjs.com) and [Bower](http://bower.io), check out the complete [Getting Started Guide](https://github.com/yeoman/yeoman/wiki/Getting-Started).


## License

[MIT License](http://en.wikipedia.org/wiki/MIT_License)
