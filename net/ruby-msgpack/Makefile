# $OpenBSD: Makefile,v 1.26 2018/07/25 21:02:51 sebastia Exp $

COMMENT =	binary-based efficient object serialization library

DISTNAME =	msgpack-1.2.4
CATEGORIES =	net devel

HOMEPAGE =	http://msgpack.org/

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}

MODRUBY_TEST =		rspec3

.include <bsd.port.mk>
