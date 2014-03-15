# $OpenBSD: Makefile,v 1.1.1.1 2014/03/15 13:37:18 benoit Exp $

# should build a static library without using -fPIC
SHARED_ONLY =	Yes

COMMENT =	shared library that implements scrypt() functionality

GH_VER =	1.17
PROJECT =	libscrypt
DISTNAME =	${PROJECT}-${GH_VER}

SHARED_LIBS =	scrypt		0.0	# 0

CATEGORIES =	security

HOMEPAGE =	https://lolware.net/libscrypt.html

MAINTAINER =	LEVAI Daniel <leva@ecentrum.hu>

# BSD
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =	c m

MASTER_SITES =	https://github.com/technion/${PROJECT}/archive/
DISTFILES =	${DISTNAME}{v${GH_VER}}${EXTRACT_SUFX}

MAKE_FLAGS =	CC="${CC}" PORTS_CFLAGS="${CFLAGS}" \
		LIBscrypt_VERSION="${LIBscrypt_VERSION}"

TEST_TARGET =	check

.include <bsd.port.mk>
