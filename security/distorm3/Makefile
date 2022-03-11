COMMENT =		powerful disassembler library for x86/amd64

MODPY_EGG_VERSION =	3.3.4
DISTNAME =		distorm3-${MODPY_EGG_VERSION}

CATEGORIES =		security

HOMEPAGE =		https://github.com/gdabah/distorm/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += pthread

GH_ACCOUNT =		gdabah
GH_PROJECT =		distorm
GH_TAGNAME =		v${MODPY_EGG_VERSION}

FIX_CRLF_FILES =	src/config.h

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

NO_TEST =		Yes

.include <bsd.port.mk>
