# $OpenBSD: Makefile,v 1.4 2017/01/03 19:24:43 landry Exp $

COMMENT =		Python library to support the IDNA protocol

MODPY_EGG_VERSION =	2.1
DISTNAME =		idna-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		net
REVISION =		0

HOMEPAGE =		https://github.com/kjd/idna

# BSD-like
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes
MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
