# $OpenBSD: Makefile,v 1.13 2021/07/27 20:42:24 juanfra Exp $

COMMENT =		Python subprocess interface

MODPY_EGG_VERSION =	1.12.14
REVISION =		4
DISTNAME =		sh-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/amoffat/sh

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
FLAVORS =		python3
FLAVOR ?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

NO_TEST =		Yes

.include <bsd.port.mk>
