# $OpenBSD: Makefile,v 1.6 2020/07/03 21:13:15 sthen Exp $

COMMENT =		utilities for writing pandoc filters

MODPY_EGG_VERSION =	1.4.1
DISTNAME =		pandocfilters-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		textproc
REVISION =		2

HOMEPAGE =		https://github.com/jgm/pandocfilters

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Upstream has no tests

.include <bsd.port.mk>
