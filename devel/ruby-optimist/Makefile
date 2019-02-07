# $OpenBSD: Makefile,v 1.1.1.1 2019/02/07 09:45:09 sebastia Exp $

COMMENT =		commandline option parser for Ruby

DISTNAME =		optimist-3.0.0
CATEGORIES =		devel

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

MODRUBY_TEST =		ruby
MODRUBY_TEST_ENV =	RUBYOPT=-Itest
MODRUBY_TEST_TARGET =	-e 'ARGV.each{|f| require f}' test/*_test.rb test/*/*_test.rb

CONFIGURE_STYLE =	ruby gem


.include <bsd.port.mk>
