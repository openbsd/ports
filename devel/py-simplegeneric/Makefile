# $OpenBSD: Makefile,v 1.6 2018/02/27 21:47:38 espie Exp $

COMMENT =		simple generic functions

MODPY_EGG_VERSION =	0.8.1
DISTNAME =		simplegeneric-${MODPY_EGG_VERSION}
EXTRACT_SUFX =		.zip
PKGNAME =		py-${DISTNAME}
REVISION =		3

CATEGORIES =		devel

# ZPL 2.1
# If we patch anything, we must include:
#     "prominent notices stating that you changed the files and
#     the date of any change."
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
