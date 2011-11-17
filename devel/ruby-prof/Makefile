# $OpenBSD: Makefile,v 1.5 2011/11/17 16:08:00 jeremy Exp $

COMMENT =	fast code profiler for Ruby

DISTNAME =	ruby-${PKGNAME}
PKGNAME =	prof-0.10.6
REVISION=	0
CATEGORIES =	devel

HOMEPAGE =	http://ruby-prof.rubyforge.org/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem ext

# 4 failures
MODRUBY_REGRESS = rake
MODRUBY_REGRESS_TARGET = build test

.include <bsd.port.mk>
