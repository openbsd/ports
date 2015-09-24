# $OpenBSD: Makefile,v 1.16 2015/09/24 10:43:39 jca Exp $

COMMENT = 	microframework based on Werkzeug and Jinja 2

MODPY_EGG_VERSION =	0.10.1
REVISION =	0
DISTNAME =	Flask-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	www devel

HOMEPAGE =	http://flask.pocoo.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=

RUN_DEPENDS =	devel/py-blinker${MODPY_FLAVOR} \
		www/py-itsdangerous${MODPY_FLAVOR} \
		www/py-jinja2${MODPY_FLAVOR}>=2.4 \
		www/py-werkzeug${MODPY_FLAVOR}>=0.7
BUILD_DEPENDS =	textproc/py-sphinx \
		www/py-itsdangerous${MODPY_FLAVOR} \
		www/py-werkzeug${MODPY_FLAVOR}>=0.7
TEST_DEPENDS = ${RUN_DEPENDS}

MAKE_ENV =	PYTHONPATH="${WRKSRC}"

post-build:
	@cd ${WRKSRC}/docs && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}flask
	cd ${WRKSRC}/docs/_build/html && \
	    pax -rw * ${PREFIX}/share/doc/${MODPY_PY_PREFIX}flask
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${MODPY_PY_PREFIX}flask
	cd ${WRKSRC}/examples && pax -rw * \
	    ${PREFIX}/share/examples/${MODPY_PY_PREFIX}flask
	rm ${PREFIX}/share/examples/${MODPY_PY_PREFIX}flask/persona/{static/,}.DS_Store

.include <bsd.port.mk>
