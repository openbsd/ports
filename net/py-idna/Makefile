# $OpenBSD: Makefile,v 1.1.1.1 2015/06/08 10:31:04 sthen Exp $

COMMENT =		Python library to support the IDNA protocol

MODPY_EGG_VERSION =	2.0
DISTNAME =		idna-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		net

HOMEPAGE =		https://github.com/kjd/idna

# BSD-like
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes
MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
