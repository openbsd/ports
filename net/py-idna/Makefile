# $OpenBSD: Makefile,v 1.9 2019/04/28 20:51:44 sthen Exp $

COMMENT =		Python library to support the IDNA protocol

MODPY_EGG_VERSION =	2.5
DISTNAME =		idna-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		net
REVISION =		0

HOMEPAGE =		https://github.com/kjd/idna

# BSD-like
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
