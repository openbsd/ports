# $OpenBSD: Makefile,v 1.9 2015/07/10 07:21:21 jasper Exp $

COMMENT =	binary-based efficient object serialization library

DISTNAME =	msgpack-0.6.1
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
