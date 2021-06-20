# $OpenBSD: Makefile,v 1.1.1.1 2021/06/20 10:45:16 sthen Exp $

COMMENT =	PEG-based parser interpreter with memoization

MODPY_EGG_VERSION =	0.3

DISTNAME =	speg-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/avakar/speg

# MIT
PERMIT_PACKAGE =	Yes

EXTRACT_SUFX =		.zip

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
NO_TEST =		Yes

FLAVOR =		python3
FLAVORS =		python3

.include <bsd.port.mk>
