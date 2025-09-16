COMMENT =		calculations for the position of the sun and the moon

MODPY_DISTV =		3.2
DISTNAME =		astral-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		astro

HOMEPAGE =		https://astral.readthedocs.org

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# Apache License 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		poetry-core

TEST_DEPENDS =		devel/py-freezegun
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
