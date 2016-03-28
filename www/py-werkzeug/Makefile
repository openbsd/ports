# $OpenBSD: Makefile,v 1.23 2016/03/28 12:20:33 danj Exp $

COMMENT =		WSGI utility collection

MODPY_EGG_VERSION =	0.11.5
DISTNAME =		Werkzeug-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

CATEGORIES =		www devel

HOMEPAGE =		http://werkzeug.pocoo.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT=		mitsuhiko
GH_PROJECT=		werkzeug
GH_TAGNAME=		${MODPY_EGG_VERSION}

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		textproc/py-sphinx

TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

pre-build:
	${SUBST_CMD} ${WRKSRC}/tests/test_serving.py

post-build:
	@cd ${WRKSRC}/docs && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html

DOCS =		${PREFIX}/share/doc/${MODPY_PY_PREFIX}werkzeug
EXAMPLES =	${PREFIX}/share/examples/${MODPY_PY_PREFIX}werkzeug
post-install:
	${INSTALL_DATA_DIR} ${DOCS}
	cd ${WRKSRC}/docs/_build/html && pax -rw * ${DOCS}
	${INSTALL_DATA_DIR} ${EXAMPLES}
	cd ${WRKSRC}/examples && pax -rw * ${EXAMPLES}

.include <bsd.port.mk>
