# $OpenBSD: Makefile,v 1.12 2021/05/21 19:50:29 kmos Exp $

COMMENT =		Python subprocess interface

MODPY_EGG_VERSION =	1.12.14
REVISION =		3
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
