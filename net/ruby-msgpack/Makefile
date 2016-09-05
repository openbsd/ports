# $OpenBSD: Makefile,v 1.16 2016/09/05 09:00:07 jasper Exp $

COMMENT =	binary-based efficient object serialization library

DISTNAME =	msgpack-0.7.6
CATEGORIES =	net devel

HOMEPAGE =	http://msgpack.org/

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby
MODRUBY_REV=		2.2

CONFIGURE_STYLE =	ruby gem ext

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}

MODRUBY_TEST =		rspec3

.include <bsd.port.mk>
