# $OpenBSD: Makefile,v 1.5 2016/03/16 16:46:33 naddy Exp $

COMMENT =	shared library that implements scrypt() functionality

V =		1.19
GH_ACCOUNT =	technion
GH_PROJECT =	libscrypt
GH_TAGNAME =	v$V
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
