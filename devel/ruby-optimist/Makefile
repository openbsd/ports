# $OpenBSD: Makefile,v 1.2 2019/07/12 21:02:18 sthen Exp $

COMMENT =		commandline option parser for Ruby

DISTNAME =		optimist-3.0.0
CATEGORIES =		devel

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE = Yes

MODULES =		lang/ruby

MODRUBY_TEST =		ruby
MODRUBY_TEST_ENV =	RUBYOPT=-Itest
MODRUBY_TEST_TARGET =	-e 'ARGV.each{|f| require f}' test/*_test.rb test/*/*_test.rb

CONFIGURE_STYLE =	ruby gem


.include <bsd.port.mk>
