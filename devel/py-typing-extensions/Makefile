# $OpenBSD: Makefile,v 1.4 2021/11/29 22:08:17 daniel Exp $

COMMENT =		backported type hints for python >= 3.5

MODPY_EGG_VERSION =	3.10.0.2
DISTNAME =		typing_extensions-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

HOMEPAGE =		https://github.com/python/typing/blob/master/typing_extensions/README.rst

CATEGORIES =		devel

MAINTAINER =		Renaud Allard <renaud@allard.it>

# PSF
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
