# $OpenBSD: Makefile,v 1.9 2019/07/12 20:51:02 sthen Exp $

COMMENT = 	helpers to pass trusted data to untrusted environments

MODPY_EGG_VERSION = 0.24
REVISION =	4
DISTNAME =	itsdangerous-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	www devel

HOMEPAGE =	http://pythonhosted.org/itsdangerous/

# BSD
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =	textproc/py-sphinx${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR ?=

MAKE_ENV +=	PYTHONPATH=${WRKSRC} SPHINXBUILD=${LOCALBASE}/bin/sphinx-build${MODPY_BIN_SUFFIX}

post-build:
	@cd ${WRKSRC}/docs && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html

post-install:
	${INSTALL_DATA_DIR} \
	    ${PREFIX}/share/doc/${MODPY_PY_PREFIX}itsdangerous
	cd ${WRKSRC}/docs/_build/html && \
	    pax -rw * ${PREFIX}/share/doc/${MODPY_PY_PREFIX}itsdangerous

.include <bsd.port.mk>
