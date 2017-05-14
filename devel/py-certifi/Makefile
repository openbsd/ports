# $OpenBSD: Makefile,v 1.15 2017/05/14 11:36:20 sebastia Exp $

COMMENT =		Python package to check certificates using the OpenBSD CA

MODPY_EGG_VERSION =	2017.4.17
DISTNAME =		certifi-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel security

HOMEPAGE =		https://certifi.io/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
