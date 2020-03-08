# $OpenBSD: Makefile,v 1.1.1.1 2020/03/08 16:30:58 landry Exp $

COMMENT =		backported type hints for python >= 3.5

MODPY_EGG_VERSION =	3.7.4.1
DISTNAME =		typing_extensions-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

HOMEPAGE =		https://github.com/python/typing/blob/master/typing_extensions/README.rst

CATEGORIES =		devel

MAINTAINER =		Renaud Allard <renaud@allard.it>

# PSF
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
