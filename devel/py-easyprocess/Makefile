# $OpenBSD: Makefile,v 1.3 2019/07/12 20:45:47 sthen Exp $

COMMENT =	easy to use python subprocess interface

MODPY_EGG_VERSION = 0.2.3
DISTNAME =	EasyProcess-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://github.com/ponty/EasyProcess

# BSD 2-clauses
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
