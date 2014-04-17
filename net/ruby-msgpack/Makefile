# $OpenBSD: Makefile,v 1.1.1.1 2014/04/17 14:27:56 jasper Exp $

COMMENT =	binary-based efficient object serialization library

DISTNAME =	msgpack-0.5.8
CATEGORIES =	net devel

HOMEPAGE =	http://msgpack.org/

# Apache2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}

MODRUBY_TEST =		rspec2

.include <bsd.port.mk>
