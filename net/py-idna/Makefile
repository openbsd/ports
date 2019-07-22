# $OpenBSD: Makefile,v 1.11 2019/07/22 12:51:59 kmos Exp $

COMMENT =		Python library to support the IDNA protocol

MODPY_EGG_VERSION =	2.8
DISTNAME =		idna-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		net

HOMEPAGE =		https://github.com/kjd/idna

# BSD-like
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
