# $OpenBSD: Makefile,v 1.10 2013/03/11 11:44:48 espie Exp $

COMMENT = 	microframework based on Werkzeug and Jinja 2

MODPY_EGG_VERSION =	0.9
DISTNAME =	Flask-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	0

CATEGORIES =	www devel

HOMEPAGE =	http://flask.pocoo.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=F/Flask/}

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	devel/py-blinker \
		www/py-jinja2>=2.4 \
		www/py-werkzeug>=0.7 \
		${MODPY_JSON}
BUILD_DEPENDS =	textproc/py-sphinx \
		www/py-werkzeug>=0.7
TEST_DEPENDS = ${RUN_DEPENDS}

post-build:
	cd ${WRKSRC}/docs && PYTHONPATH=.. $(MAKE_PROGRAM) html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/docs/${MODPY_PY_PREFIX}flask
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${MODPY_PY_PREFIX}flask
	cd ${WRKSRC}/docs/_build/html && pax -rw \
	    _images _static deploying patterns tutorial *.{inv,js,html} \
	    ${PREFIX}/share/docs/${MODPY_PY_PREFIX}flask
	cd ${WRKSRC}/examples && pax -rw * \
	    ${PREFIX}/share/examples/${MODPY_PY_PREFIX}flask

.include <bsd.port.mk>
