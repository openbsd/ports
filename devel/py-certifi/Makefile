# $OpenBSD: Makefile,v 1.13 2017/01/03 19:19:48 landry Exp $

COMMENT =		Python package to check certificates using the OpenBSD CA

MODPY_EGG_VERSION =	2016.9.26
DISTNAME =		certifi-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel security
REVISION =		0

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
