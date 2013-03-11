# $OpenBSD: Makefile,v 1.18 2013/03/11 10:50:29 espie Exp $

COMMENT =	faster implementation of the standard debug.rb

VERSION =	0.10.3
DISTNAME =      ruby-${PKGNAME}
PKGNAME =       debug-${VERSION}
REVISION =	6
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =		Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-debug-base,${MODRUBY_FLAVOR}=${VERSION} \
		devel/ruby-columnize,${MODRUBY_FLAVOR}

MODULES =	lang/ruby

FLAVORS =	ruby18
FLAVOR =	ruby18

CONFIGURE_STYLE = ruby gem

.include <bsd.port.mk>
