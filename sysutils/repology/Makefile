USE_NOBTCFI =	Yes

V =		1.10.0
REVISION =	0
COMMENT =	command line interface for Repology.org
DISTNAME =	repology-${V}
CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/ibara/repology

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB += c c++abi execinfo m pthread

SITES =	https://github.com/ibara/repology/releases/download/v${V}/

COMPILER =	ports-gcc
COMPILER_LANGS = d

BUILD_DEPENDS =	lang/gdmd

CONFIGURE_STYLE = simple
CONFIGURE_ARGS = --mandir=${PREFIX}/man

#FAKE_FLAGS =	DESTDIR=

.include <bsd.port.mk>
