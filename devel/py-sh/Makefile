# $OpenBSD: Makefile,v 1.9 2019/04/28 20:51:36 sthen Exp $

COMMENT =		Python subprocess interface

MODPY_EGG_VERSION =	1.12.14
REVISION =		1
DISTNAME =		sh-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

HOMEPAGE =		https://github.com/amoffat/sh

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
FLAVORS =		python3
FLAVOR ?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

NO_TEST =		Yes

.include <bsd.port.mk>
