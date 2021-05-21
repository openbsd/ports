# $OpenBSD: Makefile,v 1.4 2021/05/21 19:50:28 kmos Exp $

COMMENT =		version of dict that keeps keys in sorted order

MODPY_EGG_VERSION =	0.4.13
DISTNAME =		ruamel.ordereddict-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

# NB: Functionality provided by this modules is not required with Python3.
MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

WANTLIB =		${MODPY_WANTLIB} pthread

.include <bsd.port.mk>
