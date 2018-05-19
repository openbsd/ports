# $OpenBSD: Makefile,v 1.16 2018/05/19 22:26:22 pvk Exp $

COMMENT =		Python package to check certificates using the OpenBSD CA

MODPY_EGG_VERSION =	2018.4.16
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
