/* global it */
/* global should:true, expect:true, sinon:true, _it:true */

require('LiveScript');

var chai = require('chai');
var sinonChai = require('sinon-chai');

chai.use(sinonChai);
should = require('chai').should();
expect = require('chai').expect;
sinon = require('sinon');
_it = it;
