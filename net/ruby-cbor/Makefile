# $OpenBSD: Makefile,v 1.1.1.1 2020/05/20 02:09:14 jeremy Exp $

COMMENT =	CBOR implementation for Ruby

DISTNAME =	cbor-0.5.9.6
CATEGORIES =	net devel

HOMEPAGE =	https://github.com/cabo/cbor-ruby

# Apache2
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}

MODRUBY_TEST =		rspec3

.include <bsd.port.mk>
