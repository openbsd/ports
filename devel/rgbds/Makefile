# $OpenBSD: Makefile,v 1.8 2020/09/24 05:07:46 bentley Exp $

FIX_EXTRACT_PERMISSIONS =	Yes

COMMENT =	Game Boy development system

V =		0.4.1
DISTNAME =	rgbds-$V

CATEGORIES =	devel

HOMEPAGE =	https://rednex.github.io/rgbds/

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# MIT
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += c m png z

MASTER_SITES =	https://github.com/rednex/rgbds/releases/download/v$V/

COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

LIB_DEPENDS =	graphics/png

MAKE_FLAGS =	CFLAGS="${CFLAGS}" \
		BINMODE=${BINMODE} \
		MANMODE=${MANMODE} \
		Q=

FAKE_FLAGS =	mandir=${PREFIX}/man

# tests require network access, involve building software with unclear license
NO_TEST =	Yes

WRKDIST =	${WRKDIR}/rgbds

.include <bsd.port.mk>
