'use strict';

module.exports = (grunt) ->
  app =
    gruntfile:'Gruntfile.coffee'
    lib:
      src: ['lib/{,*/}*.{ls,js}']
    test:
      unit:
        helper: 'test/unit_helper.js'
        src: 'test/unit/{,*/}*.{ls,js}'
      system:
        helper: 'test/system_helper.js'
        src: 'test/system/{,*/}*.{ls,js}'

  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-simple-mocha'

  grunt.initConfig
    watch:
      gruntfile:
        files: [app.gruntfile]
      unit:
        files: [
          app.lib.src
          app.test.unit.helper
          app.test.unit.src
        ]
        tasks: ['test:unit']

    simplemocha:
      options:
        reporter: 'dot'
        globals: ['should', 'sinon', 'expect']
        ignoreLeaks: false
        growl: true
      unit:
        src: [
          app.test.unit.helper
          app.test.unit.src
        ]
      system:
        options:
          reporter: 'spec'
          timeout: 5000
        src: [
          app.test.system.helper
          app.test.system.src
        ]

  grunt.registerTask 'test', (target = 'unit') ->
    grunt.task.run ["simplemocha:#{target}"]

