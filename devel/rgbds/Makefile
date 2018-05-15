# $OpenBSD: Makefile,v 1.2 2018/05/15 07:28:15 bentley Exp $

COMMENT =	Game Boy development system

V =		0.3.7
DISTNAME =	rgbds-$V

CATEGORIES =	devel

HOMEPAGE =	https://rednex.github.io/rgbds/

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

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

.include <bsd.port.mk>
