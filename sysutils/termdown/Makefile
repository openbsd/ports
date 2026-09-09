COMMENT =	countdown timer for the terminal

MODPY_DISTV =	2.0.0
DISTNAME =	termdown-${MODPY_DISTV}

CATEGORIES =	sysutils
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# GPLv3 only
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_PYBUILD =	hatchling

RUN_DEPENDS =	devel/py-dateutil \
		graphics/py-art \
		graphics/py-Pillow

NO_TEST =	Yes

.include <bsd.port.mk>
