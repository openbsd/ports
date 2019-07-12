# $OpenBSD: Makefile,v 1.2 2019/07/12 20:45:53 sthen Exp $

COMMENT =		version of dict that keeps keys in sorted order

MODPY_EGG_VERSION =	0.4.13
DISTNAME =		ruamel.ordereddict-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

# NB: Functionality provided by this modules is not required with Python3.
MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

WANTLIB =		${MODPY_WANTLIB} pthread

.include <bsd.port.mk>
