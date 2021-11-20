# $OpenBSD: Makefile,v 1.6 2021/11/20 15:08:12 sthen Exp $

COMMENT =		library to parse Windows minidump file format

MODPY_EGG_VERSION =	0.0.21

DISTNAME =		minidump-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/skelsec/minidump

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
NO_TEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
