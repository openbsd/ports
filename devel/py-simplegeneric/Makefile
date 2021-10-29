# $OpenBSD: Makefile,v 1.11 2021/10/29 15:38:47 sthen Exp $

COMMENT =		simple generic functions

MODPY_EGG_VERSION =	0.8.1
DISTNAME =		simplegeneric-${MODPY_EGG_VERSION}
EXTRACT_SUFX =		.zip
PKGNAME =		py-${DISTNAME}
REVISION =		7

CATEGORIES =		devel

# ZPL 2.1
# If we patch anything, we must include:
#     "prominent notices stating that you changed the files and
#     the date of any change."
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =	python3

.include <bsd.port.mk>
