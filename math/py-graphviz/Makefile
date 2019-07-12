# $OpenBSD: Makefile,v 1.7 2019/07/12 20:47:46 sthen Exp $

COMMENT =		simple Python interface for Graphviz

MODPY_EGG_VERSION =	0.11.1
DISTNAME =		graphviz-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		math

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

EXTRACT_SUFX =		.zip
MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
