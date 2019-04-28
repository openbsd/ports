# $OpenBSD: Makefile,v 1.19 2019/04/28 20:51:32 sthen Exp $

COMMENT =		simplify usage of decorators

MODPY_EGG_VERSION =	4.0.11
DISTNAME =		decorator-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

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
