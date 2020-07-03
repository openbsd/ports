# $OpenBSD: Makefile,v 1.27 2020/07/03 21:12:51 sthen Exp $

COMMENT =		virtual Python environment builder

MODPY_EGG_VERSION =	16.0.0
DISTNAME =		virtualenv-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		1

HOMEPAGE =		http://www.virtualenv.org/

MAINTAINER =		Daniel Jakots <obsd@chown.me>

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
BUILD_DEPENDS =		textproc/py-sphinx${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR}

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	tests

FLAVORS =		python3
FLAVOR ?=

MAKE_ENV +=	PYTHONPATH=${WRKSRC} SPHINXBUILD=${LOCALBASE}/bin/sphinx-build${MODPY_BIN_SUFFIX}
DOCSRC =	${WRKSRC}/docs
post-build:
	cd ${DOCSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html

DOCS =		${PREFIX}/share/doc/${MODPY_PY_PREFIX}virtualenv

post-install:
	${INSTALL_DATA_DIR} ${DOCS}
	cd ${DOCSRC}/_build/html && pax -rw * ${DOCS}
	mv ${PREFIX}/bin/virtualenv{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
