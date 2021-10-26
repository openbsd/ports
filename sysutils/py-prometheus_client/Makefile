# $OpenBSD: Makefile,v 1.7 2021/10/26 19:34:10 sthen Exp $

COMMENT =		python client for the prometheus monitoring system

MODPY_EGG_VERSION =	0.11.0
DISTNAME =		prometheus_client-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/prometheus/client_python

# Apache License v2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
