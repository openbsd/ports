# $OpenBSD: Makefile,v 1.6 2020/04/12 04:24:56 bentley Exp $

FIX_EXTRACT_PERMISSIONS =	Yes

COMMENT =	Game Boy development system

V =		0.4.0
DISTNAME =	rgbds-$V

CATEGORIES =	devel

HOMEPAGE =	https://rednex.github.io/rgbds/

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# MIT
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += c m png z

MASTER_SITES =	https://github.com/rednex/rgbds/releases/download/v$V/

LIB_DEPENDS =	graphics/png

MAKE_FLAGS =	CFLAGS="${CFLAGS}" \
		BINMODE=${BINMODE} \
		MANMODE=${MANMODE} \
		Q=

# tests require network access, involve building software with unclear license
NO_TEST =	Yes

WRKDIST =	${WRKDIR}/rgbds

.include <bsd.port.mk>
