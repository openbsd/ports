FIX_EXTRACT_PERMISSIONS =	Yes

COMMENT =	Game Boy development system

V =		0.4.2
DISTNAME =	rgbds-$V

CATEGORIES =	devel

HOMEPAGE =	https://rgbds.gbdev.io/

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# MIT
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += c m png z

MASTER_SITES =	https://github.com/gbdev/rgbds/releases/download/v$V/

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
