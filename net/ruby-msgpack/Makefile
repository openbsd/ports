# $OpenBSD: Makefile,v 1.5 2014/10/17 17:48:34 jasper Exp $

COMMENT =	binary-based efficient object serialization library

DISTNAME =	msgpack-0.5.9
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
