# $OpenBSD: Makefile,v 1.13 2015/09/29 10:52:12 sthen Exp $

COMMENT =		virtual Python environment builder

MODPY_EGG_VERSION =	13.0.3
DISTNAME =		virtualenv-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		http://www.virtualenv.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
BUILD_DEPENDS =		textproc/py-sphinx

MODPY_SETUPTOOLS =	Yes

# the pypi archive does not contain the tests
NO_TEST =		Yes

MAKE_ENV +=	PYTHONPATH=${WRKSRC}
DOCSRC =	${WRKSRC}/docs
post-build:
	cd ${DOCSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html

DOCS =		${PREFIX}/share/doc/py-virtualenv

post-install:
	${INSTALL_DATA_DIR} ${DOCS}
	cd ${DOCSRC}/_build/html && pax -rw * ${DOCS}

.include <bsd.port.mk>
