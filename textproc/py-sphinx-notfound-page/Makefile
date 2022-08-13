COMMENT =		Sphinx extension to build a 404 page with absolute URLs

MODPY_EGG_VERSION =	0.8.3
DISTNAME =		sphinx-notfound-page-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

REVISION =		0

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/readthedocs/sphinx-notfound-page

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

PATCHORIG =		.orig.port

FLAVORS =		python3
FLAVOR  =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		textproc/py-sphinx${MODPY_FLAVOR}

NO_TEST =		Yes

MODPY_PEP517 =		flit_core

.include <bsd.port.mk>
