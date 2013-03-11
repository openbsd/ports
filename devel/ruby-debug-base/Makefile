# $OpenBSD: Makefile,v 1.17 2013/03/11 10:50:29 espie Exp $

COMMENT =	faster implementation of the standard debug.rb - base

DISTNAME =	ruby-${PKGNAME}
PKGNAME =	debug-base-0.10.3
REVISION =	5
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =		Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-linecache,${MODRUBY_FLAVOR}

MODULES =	lang/ruby

FLAVORS =	ruby18
FLAVOR =	ruby18

CONFIGURE_STYLE = ruby gem ext

MODRUBY_TEST = rake

.include <bsd.port.mk>
