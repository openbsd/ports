# $OpenBSD: Makefile,v 1.5 2021/05/21 19:50:29 kmos Exp $

COMMENT =		backport of the subprocess library module from Python 3

MODPY_EGG_VERSION =	3.5.2
DISTNAME =		subprocess32-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

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
