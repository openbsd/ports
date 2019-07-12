# $OpenBSD: Makefile,v 1.10 2019/07/12 20:45:53 sthen Exp $

COMMENT =		Python subprocess interface

MODPY_EGG_VERSION =	1.12.14
REVISION =		1
DISTNAME =		sh-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

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
