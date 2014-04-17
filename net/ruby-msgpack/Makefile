# $OpenBSD: Makefile,v 1.2 2014/04/17 14:29:33 jasper Exp $

COMMENT =	binary-based efficient object serialization library

DISTNAME =	msgpack-0.5.8
CATEGORIES =	net devel

HOMEPAGE =	http://msgpack.org/

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}

MODRUBY_TEST =		rspec2

.include <bsd.port.mk>
