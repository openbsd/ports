# $OpenBSD: Makefile,v 1.27 2016/05/15 15:48:41 danj Exp $

COMMENT =		Python easy_install replacement

MODPY_EGG_VERSION =	8.1.2
DISTNAME =		pip-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		https://pip.pypa.io/en/stable/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		textproc/py-sphinx${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

DOCSRC =	${WRKSRC}/docs
post-build:
	cd ${DOCSRC} && PYTHONPATH=${WRKSRC} \
		${LOCALBASE}/bin/sphinx-build${MODPY_BIN_SUFFIX} -N . _build/html

DOCS =		${PREFIX}/share/doc/${MODPY_PY_PREFIX}pip

post-install:
	${INSTALL_DATA_DIR} ${DOCS}
	cd ${DOCSRC}/_build/html && pax -rw * ${DOCS}

.include <bsd.port.mk>
