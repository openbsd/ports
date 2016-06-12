# $OpenBSD: Makefile,v 1.16 2016/06/12 07:05:54 shadchin Exp $

COMMENT =		simplify usage of decorators

MODPY_EGG_VERSION =	4.0.10
DISTNAME =		decorator-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://pythonhosted.org/decorator/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
