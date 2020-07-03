# $OpenBSD: Makefile,v 1.2 2020/07/03 21:13:15 sthen Exp $

COMMENT =		Python implementation of the patiencediff algorithm

MODPY_EGG_VERSION =	0.1.0
DISTNAME =		patiencediff-${MODPY_EGG_VERSION}
PKGNAME =		py-patiencediff-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		textproc

HOMEPAGE =		https://pypi.org/project/patiencediff/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODPY_WANTLIB} pthread

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	patiencediff
MODPY_SETUPTOOLS =	Yes
MODPY_TEST_DIR =	${WRKSRC}/lib*

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
