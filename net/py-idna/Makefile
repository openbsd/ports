# $OpenBSD: Makefile,v 1.13 2020/07/03 21:13:01 sthen Exp $

COMMENT =		Python library to support the IDNA protocol

MODPY_EGG_VERSION =	2.8
DISTNAME =		idna-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		net
REVISION =		0

HOMEPAGE =		https://github.com/kjd/idna

# BSD-like
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
