COMMENT =		commandline option parser for Ruby

DISTNAME =		optimist-3.2.1
CATEGORIES =		devel

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE = Yes

MODULES =		lang/ruby

#165 runs, 874 assertions, 2 failures, 1 errors, 0 skips
MODRUBY_TEST =		ruby
MODRUBY_TEST_ENV =	RUBYOPT=-Itest
MODRUBY_TEST_TARGET =	-e 'ARGV.each{|f| require f}' test/*_test.rb test/*/*_test.rb

CONFIGURE_STYLE =	ruby gem


.include <bsd.port.mk>
