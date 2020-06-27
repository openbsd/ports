# $OpenBSD: Makefile,v 1.2 2020/06/27 21:13:53 pirofti Exp $

COMMENT =		serialize all of python

MODPY_EGG_VERSION =	0.3.1.1
DISTNAME =		dill-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

# Apache v2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =               python3
FLAVOR =                python3

.include <bsd.port.mk>
