# $OpenBSD: Makefile,v 1.6 2019/07/10 18:21:07 jasper Exp $

COMMENT =		simple Python interface for Graphviz

MODPY_EGG_VERSION =	0.11.1
DISTNAME =		graphviz-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		math

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

EXTRACT_SUFX =		.zip
MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
