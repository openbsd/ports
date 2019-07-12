# $OpenBSD: Makefile,v 1.7 2019/07/12 20:49:05 sthen Exp $

COMMENT =	shared library that implements scrypt() functionality

V =		1.21
GH_ACCOUNT =	technion
GH_PROJECT =	libscrypt
GH_TAGNAME =	v$V
DISTNAME =	${GH_PROJECT}-$V

SHARED_LIBS =	scrypt		1.0	# 0

CATEGORIES =	security

HOMEPAGE =	https://lolware.net/libscrypt.html

MAINTAINER =	LEVAI Daniel <leva@ecentrum.hu>

# BSD
PERMIT_PACKAGE =		Yes

WANTLIB =	c m

MAKE_FLAGS =	CC="${CC}" PORTS_CFLAGS="${CFLAGS}" \
		LIBscrypt_VERSION="${LIBscrypt_VERSION}"

TEST_TARGET =	check

.include <bsd.port.mk>
