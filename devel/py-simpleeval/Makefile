# $OpenBSD: Makefile,v 1.1.1.1 2017/05/22 02:23:18 danj Exp $

COMMENT =	simple, safe single expression evaluator library

MODPY_EGG_VERSION = 0.9.5
DISTNAME =	simpleeval-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
