# $OpenBSD: Makefile,v 1.23 2020/05/14 11:44:48 sthen Exp $

COMMENT =		Python package to check certificates using the OpenBSD CA

MODPY_EGG_VERSION =	2020.4.5.1
DISTNAME =		certifi-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel security

HOMEPAGE =		https://certifi.io/

# ISC
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
