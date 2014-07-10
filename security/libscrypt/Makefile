# $OpenBSD: Makefile,v 1.3 2014/07/10 11:06:37 rpe Exp $

# should build a static library without using -fPIC
SHARED_ONLY =	Yes

COMMENT =	shared library that implements scrypt() functionality

V =		1.19
GH_ACCOUNT =	technion
GH_PROJECT =	libscrypt
GH_TAGNAME =	v$V
GH_COMMIT =	457ff867eee5fe8535503d5af0b39b78875f2d7f
DISTNAME =	${GH_PROJECT}-$V

SHARED_LIBS =	scrypt		1.0	# 0

CATEGORIES =	security

HOMEPAGE =	https://lolware.net/libscrypt.html

MAINTAINER =	LEVAI Daniel <leva@ecentrum.hu>

# BSD
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =	c m

MAKE_FLAGS =	CC="${CC}" PORTS_CFLAGS="${CFLAGS}" \
		LIBscrypt_VERSION="${LIBscrypt_VERSION}"

TEST_TARGET =	check

.include <bsd.port.mk>
