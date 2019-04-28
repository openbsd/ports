# $OpenBSD: Makefile,v 1.2 2019/04/28 20:51:56 sthen Exp $

COMMENT =		utilities for writing pandoc filters

MODPY_EGG_VERSION =	1.4.1
DISTNAME =		pandocfilters-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		textproc
REVISION =		0

HOMEPAGE =		https://github.com/jgm/pandocfilters

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
