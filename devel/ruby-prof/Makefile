# $OpenBSD: Makefile,v 1.17 2019/11/12 06:42:43 jeremy Exp $

COMMENT =	fast code profiler for Ruby

DISTNAME =	ruby-${PKGNAME}
PKGNAME =	prof-1.0.0
CATEGORIES =	devel

HOMEPAGE =	https://github.com/ruby-prof/ruby-prof

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE =		Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem ext

TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_TEST =	ruby
MODRUBY_TEST_TARGET =	-rruby_prof -e 'ARGV.each{|f| require 'f'}' \
				./test/*_test.rb

.include <bsd.port.mk>
