/* global it */
/* global should:true, expect:true, sinon:true, _it:true */

require('LiveScript');

var chai = require('chai');
var sinonChai = require('sinon-chai');

// Additional chai syntax for sinon
chai.use(sinonChai);

// Global access those variables in tests
should = require('chai').should();
expect = require('chai').expect;
sinon = require('sinon');
_it = it;
