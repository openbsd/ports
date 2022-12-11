COMMENT =		markdown to reStructuredText converter

# github repo archived, upstream suggests forking
MODPY_EGG_VERSION =	0.3.1
REVISION =		0

DISTNAME =		m2r-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel textproc

HOMEPAGE =		https://github.com/miyakogi/m2r

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODULES =		lang/python
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		textproc/py-mistune${MODPY_FLAVOR}<2 \
			textproc/py-docutils${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
