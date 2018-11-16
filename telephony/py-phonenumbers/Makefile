# $OpenBSD: Makefile,v 1.1.1.1 2018/11/16 08:48:52 jca Exp $

COMMENT =	port of Google's libphonenumber library
#'

MODPY_EGG_VERSION = 8.9.16
DISTNAME =	phonenumbers-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	telephony devel

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
