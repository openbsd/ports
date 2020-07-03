# $OpenBSD: Makefile,v 1.44 2020/07/03 21:12:47 sthen Exp $

COMMENT =		Python parsing module

MODPY_EGG_VERSION =	2.4.0
DISTNAME =		pyparsing-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		http://pyparsing.wikispaces.com/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

EXAMPLESDIR =		${PREFIX}/share/examples/${MODPY_PY_PREFIX}parsing

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${EXAMPLESDIR}

.include <bsd.port.mk>
