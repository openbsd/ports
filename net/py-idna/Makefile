# $OpenBSD: Makefile,v 1.7 2017/03/02 14:34:10 sthen Exp $

COMMENT =		Python library to support the IDNA protocol

MODPY_EGG_VERSION =	2.4
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
