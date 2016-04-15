# $OpenBSD: Makefile,v 1.25 2016/04/15 08:53:49 shadchin Exp $

COMMENT =		Python easy_install replacement

MODPY_EGG_VERSION =	8.1.1
DISTNAME =		pip-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		https://pip.pypa.io/en/stable/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
BUILD_DEPENDS =		textproc/py-sphinx
MODPY_SETUPTOOLS =	Yes
NO_TEST =		Yes

FLAVORS =		python3
FLAVOR ?=

MAKE_ENV +=	PYTHONPATH=${WRKSRC}
DOCSRC =	${WRKSRC}/docs
post-build:
	cd ${DOCSRC} && PYTHONPATH=${WRKSRC} \
		${LOCALBASE}/bin/sphinx-build -N . _build/html

DOCS =		${PREFIX}/share/doc/${MODPY_PY_PREFIX}pip

post-install:
	${INSTALL_DATA_DIR} ${DOCS}
	cd ${DOCSRC}/_build/html && pax -rw * ${DOCS}

.include <bsd.port.mk>
