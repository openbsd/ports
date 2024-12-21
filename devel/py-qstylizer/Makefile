COMMENT =		Qt stylesheet generation utility for PyQT/PySide

MODPY_DISTV =	0.2.2
GH_ACCOUNT =		blambright
GH_PROJECT =		qstylizer
GH_TAGNAME =		${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYBUILD=		setuptools

MAKE_ENV +=		PBR_VERSION=${MODPY_DISTV}

BUILD_DEPENDS =		devel/py-pbr

RUN_DEPENDS =		textproc/py-inflection>0.3.0,<1 \
			textproc/py-tinycss2>=0.5,<2

.include <bsd.port.mk>
