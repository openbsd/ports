# $OpenBSD: Makefile,v 1.4 2021/02/23 19:39:19 sthen Exp $

COMMENT =		backport of the subprocess library module from Python 3

MODPY_EGG_VERSION =	3.5.2
DISTNAME =		subprocess32-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

# PSF
PERMIT_PACKAGE =	Yes

WANTLIB =	${MODPY_WANTLIB} pthread

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

.include <bsd.port.mk>
