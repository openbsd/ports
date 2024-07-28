# Dlang
ONLY_FOR_ARCHS =	amd64 i386
USE_NOBTCFI =	Yes

V =		1.3.0
COMMENT =	command line interface for Repology.org
DISTNAME =	repology-${V}
CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/ibara/repology
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB += c c++abi execinfo m pthread

SITES =	https://github.com/ibara/repology/releases/download/v${V}/

BUILD_DEPENDS =	lang/dmd

FAKE_FLAGS =	DESTDIR=

.include <bsd.port.mk>
