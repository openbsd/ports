# $OpenBSD: Makefile,v 1.3 2019/05/13 19:03:53 danj Exp $

COMMENT =		utilities for writing pandoc filters

MODPY_EGG_VERSION =	1.4.1
DISTNAME =		pandocfilters-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		textproc
REVISION =		1

HOMEPAGE =		https://github.com/jgm/pandocfilters

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
