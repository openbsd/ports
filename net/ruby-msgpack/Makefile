# $OpenBSD: Makefile,v 1.8 2015/06/01 06:40:05 jasper Exp $

COMMENT =	binary-based efficient object serialization library

DISTNAME =	msgpack-0.5.12
CATEGORIES =	net devel

HOMEPAGE =	http://msgpack.org/

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}

MODRUBY_TEST =		rspec3

.include <bsd.port.mk>
