'use strict';
var util = require('util');
var path = require('path');
var yeoman = require('yeoman-generator');


var RestifyLiveGenerator = module.exports = function RestifyLiveGenerator(args, options) {
  yeoman.generators.Base.apply(this, arguments);

  this.on('end', function () {
    this.installDependencies({ skipInstall: options['skip-install'] });
  });

  this.pkg = JSON.parse(this.readFileAsString(path.join(__dirname, '../package.json')));
};

util.inherits(RestifyLiveGenerator, yeoman.generators.Base);

RestifyLiveGenerator.prototype.askFor = function askFor() {
  var cb = this.async();

  // have Yeoman greet the user.
  console.log(this.yeoman);

  var prompts = [{
    type: 'confirm',
    name: 'someOption',
    message: 'Would you like to enable this option?',
    default: true
  }];

  this.prompt(prompts, function (props) {
    this.someOption = props.someOption;

    cb();
  }.bind(this));
};

RestifyLiveGenerator.prototype.app = function app() {
  this.mkdir('app');

  this.copy('_package.json', 'package.json');
  this.copy('_index.js', 'index.js');
  this.copy('_Gruntfile.coffee', 'Gruntfile.coffee');
  this.directory('lib', 'lib');
  this.directory('test', 'test');
};

RestifyLiveGenerator.prototype.projectfiles = function projectfiles() {
  this.copy('editorconfig', '.editorconfig');
  this.copy('jshintrc', '.jshintrc');
};
