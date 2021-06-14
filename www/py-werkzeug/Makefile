# $OpenBSD: Makefile,v 1.39 2021/06/14 21:10:35 daniel Exp $

COMMENT =		WSGI utility collection

MODPY_EGG_VERSION =	0.12.1
DISTNAME =		Werkzeug-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
REVISION =		7

CATEGORIES =		www devel

HOMEPAGE =		https://palletsprojects.com/p/werkzeug/

# BSD
PERMIT_PACKAGE =	Yes

GH_ACCOUNT=		pallets
GH_PROJECT=		werkzeug
GH_TAGNAME=		${MODPY_EGG_VERSION}

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		textproc/py-sphinx,python3>=1.5

TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

MAKE_ENV +=	PYTHONPATH=${WRKSRC}

pre-build:
	${SUBST_CMD} ${WRKSRC}/tests/test_serving.py

post-build:
	cd ${WRKSRC}/docs && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html

DOCS =		${PREFIX}/share/doc/${MODPY_PY_PREFIX}werkzeug
EXAMPLES =	${PREFIX}/share/examples/${MODPY_PY_PREFIX}werkzeug
post-install:
	${INSTALL_DATA_DIR} ${DOCS}
	cd ${WRKSRC}/docs/_build/html && pax -rw * ${DOCS}
	${INSTALL_DATA_DIR} ${EXAMPLES}
	cd ${WRKSRC}/examples && pax -rw * ${EXAMPLES}

.include <bsd.port.mk>
