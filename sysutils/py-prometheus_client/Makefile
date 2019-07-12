# $OpenBSD: Makefile,v 1.2 2019/07/12 20:49:49 sthen Exp $

COMMENT =		python client for the prometheus monitoring system

MODPY_EGG_VERSION =	0.6.0
DISTNAME =		prometheus_client-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		sysutils

# Apache License v2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
