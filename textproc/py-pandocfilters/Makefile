# $OpenBSD: Makefile,v 1.5 2019/11/21 03:31:42 kmos Exp $

COMMENT =		utilities for writing pandoc filters

MODPY_EGG_VERSION =	1.4.1
DISTNAME =		pandocfilters-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		textproc
REVISION =		1

HOMEPAGE =		https://github.com/jgm/pandocfilters

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Upstream has no tests

.include <bsd.port.mk>
