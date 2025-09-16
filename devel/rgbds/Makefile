BROKEN-sparc64 = src/link/script.y:17:11: fatal error: bit: No such file or directory

COMMENT =	Game Boy development system

V =		0.9.4
DISTNAME =	rgbds-$V
DISTFILES =	rgbds-$V{rgbds-source}${EXTRACT_SUFX}

CATEGORIES =	devel

HOMEPAGE =	https://rgbds.gbdev.io/

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# MIT
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += ${COMPILER_LIBCXX} c m png

SITES =		https://github.com/gbdev/rgbds/releases/download/v$V/

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/bison \
		shells/bash

LIB_DEPENDS =	graphics/png

FAKE_FLAGS =	mandir=${PREFIX}/man

# tests require network access, involve building software with unclear license
NO_TEST =	Yes

WRKDIST =	${WRKDIR}/rgbds

DEBUG_PACKAGES = ${BUILD_PACKAGES}

.include <bsd.port.mk>
