# $OpenBSD: Makefile,v 1.13 2014/09/27 17:02:29 jeremy Exp $

COMMENT =	fast code profiler for Ruby

DISTNAME =	ruby-${PKGNAME}
PKGNAME =	prof-0.15.1
CATEGORIES =	devel

HOMEPAGE =	https://github.com/ruby-prof/ruby-prof

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem ext

TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_TEST =	ruby
MODRUBY_TEST_TARGET =	-rruby_prof -e 'ARGV.each{|f| require 'f'}' \
				./test/*_test.rb

.include <bsd.port.mk>
