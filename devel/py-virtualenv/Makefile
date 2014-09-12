# $OpenBSD: Makefile,v 1.9 2014/09/12 08:27:43 benoit Exp $

COMMENT =		virtual Python environment builder

MODPY_EGG_VERSION =	1.11.6
DISTNAME =		virtualenv-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		http://www.virtualenv.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=v/virtualenv/}

MODULES =		lang/python
BUILD_DEPENDS =		textproc/py-sphinx

MODPY_SETUPTOOLS =	Yes

# the pypi archive does not contain the tests
NO_TEST =		Yes

MAKE_ENV +=	PYTHONPATH=${WRKSRC}
post-build:
	cd ${WRKSRC}/docs && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html

DOCS =		${PREFIX}/share/doc/py-virtualenv

post-install:
	${INSTALL_DATA_DIR} ${DOCS}
	cd ${WRKSRC}/docs/_build/html && pax -rw * ${DOCS}

.include <bsd.port.mk>
