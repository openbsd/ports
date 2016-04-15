# $OpenBSD: Makefile,v 1.15 2016/04/15 08:53:49 shadchin Exp $

COMMENT =		virtual Python environment builder

MODPY_EGG_VERSION =	13.0.3
DISTNAME =		virtualenv-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		2

HOMEPAGE =		http://www.virtualenv.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
BUILD_DEPENDS =		textproc/py-sphinx

MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

# the pypi archive does not contain the tests
NO_TEST =		Yes

MAKE_ENV +=	PYTHONPATH=${WRKSRC}
DOCSRC =	${WRKSRC}/docs
post-build:
	cd ${DOCSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html

DOCS =		${PREFIX}/share/doc/${MODPY_PY_PREFIX}virtualenv

post-install:
	${INSTALL_DATA_DIR} ${DOCS}
	cd ${DOCSRC}/_build/html && pax -rw * ${DOCS}
	mv ${PREFIX}/bin/virtualenv{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
