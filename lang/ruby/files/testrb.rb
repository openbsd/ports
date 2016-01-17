#!/usr/bin/env ruby
#
# $OpenBSD: testrb.rb,v 1.1 2016/01/17 19:39:05 jasper Exp $
#
# testrb for use by ruby.port.mk for Ruby >= 2.2
require 'test/unit'
exit Test::Unit::AutoRunner.run(true)
