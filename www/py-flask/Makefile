# $OpenBSD: Makefile,v 1.19 2016/11/02 16:50:02 danj Exp $

COMMENT =		microframework based on Werkzeug and Jinja 2

MODPY_EGG_VERSION =	0.11.1
DISTNAME =		Flask-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

CATEGORIES =		www devel

HOMEPAGE =		http://flask.pocoo.org/

MAINTAINER =		Daniel Jakots <obsd@chown.me>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

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
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-test${MODPY_FLAVOR}

MAKE_ENV =		PYTHONPATH="${WRKSRC}" SPHINXBUILD=${LOCALBASE}/bin/sphinx-build${MODPY_BIN_SUFFIX}

post-build:
	@cd ${WRKSRC}/docs && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}flask
	cd ${WRKSRC}/docs/_build/html && \
	    pax -rw * ${PREFIX}/share/doc/${MODPY_PY_PREFIX}flask
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${MODPY_PY_PREFIX}flask
	cd ${WRKSRC}/examples && pax -rw * \
	    ${PREFIX}/share/examples/${MODPY_PY_PREFIX}flask
.if ${FLAVOR:Mpython3}
	mv ${PREFIX}/bin/flask ${PREFIX}/bin/flask${MODPY_BIN_SUFFIX}
.endif

do-test:
	cd ${WRKSRC} && LC_ALL=C.UTF-8 ${MODPY_BIN} -m pytest tests examples

.include <bsd.port.mk>
