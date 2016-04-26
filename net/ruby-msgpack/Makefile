# $OpenBSD: Makefile,v 1.14 2016/04/26 10:59:01 jasper Exp $

COMMENT =	binary-based efficient object serialization library

DISTNAME =	msgpack-0.7.5
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
