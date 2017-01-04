# $OpenBSD: Makefile,v 1.5 2017/01/04 18:23:27 shadchin Exp $

COMMENT =		Python library to support the IDNA protocol

MODPY_EGG_VERSION =	2.2
DISTNAME =		idna-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		net

HOMEPAGE =		https://github.com/kjd/idna

# BSD-like
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
