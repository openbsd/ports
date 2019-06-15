# $OpenBSD: Makefile,v 1.1.1.1 2019/06/15 12:16:09 robert Exp $

COMMENT =	Python port of Google's libphonenumber

MODPY_EGG_VERSION =	8.10.12
DISTNAME =		phonenumbers-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =	textproc

HOMEPAGE =	https://github.com/daviddrysdale/python-phonenumbers

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR ?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
