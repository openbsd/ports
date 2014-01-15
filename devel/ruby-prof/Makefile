# $OpenBSD: Makefile,v 1.10 2014/01/15 02:13:58 jeremy Exp $

COMMENT =	fast code profiler for Ruby

DISTNAME =	ruby-${PKGNAME}
PKGNAME =	prof-0.10.6
REVISION=	4
CATEGORIES =	devel

HOMEPAGE =	http://ruby-prof.rubyforge.org/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem ext

# 4 failures
MODRUBY_TEST = rake
MODRUBY_TEST_TARGET = build test

.include <bsd.port.mk>
