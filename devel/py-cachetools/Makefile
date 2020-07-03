# $OpenBSD: Makefile,v 1.6 2020/07/03 21:12:41 sthen Exp $

COMMENT =		extensible memoizing collections and decorators

MODPY_EGG_VERSION =	4.1.0
DISTNAME =		cachetools-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/tkem/cachetools

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}cachetools/
	${INSTALL_DATA} ${WRKSRC}/README.rst \
	    ${PREFIX}/share/doc/${MODPY_PY_PREFIX}cachetools/

.include <bsd.port.mk>
