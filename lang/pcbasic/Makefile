COMMENT =	free, cross-platform emulator for GW-BASIC family (PC-BASIC)

MODPY_EGG_VERSION =	2.0.7
GH_ACCOUNT =		robhagemans
GH_PROJECT =		pcbasic
GH_TAGNAME =		v${MODPY_EGG_VERSION}
DISTNAME =		pcbasic-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =	lang

HOMEPAGE =	http://www.pc-basic.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PYBUILD =	hatchling
# test_main hangs forever
MODPY_PYTEST_ARGS = --ignore tests/unit/test_main.py

PORTHOME =	${WRKDIST}

BUILD_DEPENDS =	devel/py-hatch-nodejs-version${MODPY_FLAVOR}

RUN_DEPENDS =	devel/py-parallel${MODPY_FLAVOR} \
		devel/py-serial${MODPY_FLAVOR} \
		devel/sdl2-gfx \
		math/py-numpy${MODPY_FLAVOR}

.include <bsd.port.mk>
