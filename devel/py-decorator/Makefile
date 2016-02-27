# $OpenBSD: Makefile,v 1.15 2016/02/27 17:42:59 shadchin Exp $

COMMENT =	simplify usage of decorators

MODPY_EGG_VERSION = 4.0.9
DISTNAME =	decorator-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://pythonhosted.org/decorator/

MAINTAINER =	Alexandr Shadchin <shadchin@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
