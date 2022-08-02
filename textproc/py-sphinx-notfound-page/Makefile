COMMENT =		Sphinx extension to build a 404 page with absolute URLs

MODPY_EGG_VERSION =	0.8.3
DISTNAME =		sphinx-notfound-page-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

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

BUILD_DEPENDS += devel/py-flit_core${MODPY_FLAVOR} \
		devel/py-installer${MODPY_FLAVOR}

do-build:
	cd ${WRKSRC} && ${MODPY_BIN} -m flit_core.wheel

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_LIBDIR}
	${MODPY_BIN} -m installer -d ${WRKINST} ${WRKSRC}/dist/*.whl

.include <bsd.port.mk>
