# $OpenBSD: Makefile,v 1.25 2018/06/13 22:26:52 jeremy Exp $

COMMENT =	binary-based efficient object serialization library

DISTNAME =	msgpack-1.2.2
REVISION =	0
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
