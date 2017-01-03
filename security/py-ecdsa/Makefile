# $OpenBSD: Makefile,v 1.6 2017/01/03 19:26:14 landry Exp $

COMMENT =		Python implementation of ECDSA cryptography

MODPY_EGG_VERSION = 	0.13
DISTNAME = 		ecdsa-${MODPY_EGG_VERSION}
PKGNAME = 		py-${DISTNAME}
CATEGORIES = 		security
REVISION =		1

HOMEPAGE = 		https://github.com/warner/python-ecdsa

MAINTAINER = 		Benoit Lecocq <benoit@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM = 	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
