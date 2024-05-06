COMMENT =		Qt stylesheet generation utility for PyQT/PySide

MODPY_EGG_VERSION =	0.2.2
GH_ACCOUNT =		blambright
GH_PROJECT =		qstylizer
GH_TAGNAME =		${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PYBUILD=		setuptools

MAKE_ENV +=		PBR_VERSION=${MODPY_EGG_VERSION}

BUILD_DEPENDS =		devel/py-pbr${MODPY_FLAVOR}

RUN_DEPENDS =		textproc/py-inflection${MODPY_FLAVOR}>0.3.0,<1 \
			textproc/py-tinycss2${MODPY_FLAVOR}>=0.5,<2

.include <bsd.port.mk>
