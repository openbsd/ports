# $OpenBSD: Makefile,v 1.12 2013/06/04 07:57:13 fgsch Exp $

COMMENT = 	microframework based on Werkzeug and Jinja 2

MODPY_EGG_VERSION =	0.9
DISTNAME =	Flask-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	2

CATEGORIES =	www devel

HOMEPAGE =	http://flask.pocoo.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=F/Flask/}

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	devel/py-blinker \
		www/py-jinja2>=2.4 \
		www/py-werkzeug>=0.7
BUILD_DEPENDS =	textproc/py-sphinx \
		www/py-werkzeug>=0.7
TEST_DEPENDS = ${RUN_DEPENDS}

MAKE_ENV =	PYTHONPATH="${WRKSRC}"

post-build:
	@cd ${WRKSRC}/docs && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/docs/${MODPY_PY_PREFIX}flask
	cd ${WRKSRC}/docs/_build/html && \
	    pax -rw * ${PREFIX}/share/docs/${MODPY_PY_PREFIX}flask
	rm -rf ${PREFIX}/share/docs/${MODPY_PY_PREFIX}flask/_sources
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${MODPY_PY_PREFIX}flask
	cd ${WRKSRC}/examples && pax -rw * \
	    ${PREFIX}/share/examples/${MODPY_PY_PREFIX}flask

.include <bsd.port.mk>
