# $OpenBSD: Makefile,v 1.30 2019/07/12 20:51:01 sthen Exp $

COMMENT =		microframework based on Werkzeug and Jinja 2

MODPY_EGG_VERSION =	0.12.3
DISTNAME =		Flask-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
REVISION =		1

CATEGORIES =		www devel

HOMEPAGE =		http://flask.pocoo.org/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	tests

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-blinker${MODPY_FLAVOR} \
			www/py-itsdangerous${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR} \
			www/py-werkzeug${MODPY_FLAVOR} \
			devel/py-click${MODPY_FLAVOR}
BUILD_DEPENDS =		textproc/py-sphinx${MODPY_FLAVOR} \
			www/py-itsdangerous${MODPY_FLAVOR} \
			www/py-werkzeug${MODPY_FLAVOR}

MAKE_ENV =		PYTHONPATH="${WRKSRC}" SPHINXBUILD=${LOCALBASE}/bin/sphinx-build${MODPY_BIN_SUFFIX}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${MODPY_PY_PREFIX}flask
	cd ${WRKSRC}/examples && pax -rw * \
	    ${PREFIX}/share/examples/${MODPY_PY_PREFIX}flask
	mv ${PREFIX}/bin/flask ${PREFIX}/bin/flask${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
