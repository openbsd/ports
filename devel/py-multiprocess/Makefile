# $OpenBSD: Makefile,v 1.3 2020/07/03 21:11:01 sthen Exp $

COMMENT =		better multiprocessing and multithreading in python

MODPY_EGG_VERSION =	0.70.9
DISTNAME =		multiprocess-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		1

MAINTAINER =		Paul Irofti <paul@irofti.net>

# Apache v2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-dill${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =               python3
FLAVOR =                python3

.include <bsd.port.mk>
