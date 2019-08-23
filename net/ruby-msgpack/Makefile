# $OpenBSD: Makefile,v 1.33 2019/08/23 08:20:37 sebastia Exp $

COMMENT =	binary-based efficient object serialization library

DISTNAME =	msgpack-1.3.1
CATEGORIES =	net devel

HOMEPAGE =	http://msgpack.org/

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache2
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}

MODRUBY_TEST =		rspec3

.include <bsd.port.mk>
