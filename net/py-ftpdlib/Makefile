# $OpenBSD: Makefile,v 1.27 2021/10/24 09:28:49 sthen Exp $

COMMENT =		FTP server library for Python

MODPY_EGG_VERSION =	1.5.6
DISTNAME =		pyftpdlib-${MODPY_EGG_VERSION}
PKGNAME =		py-ftpdlib-${MODPY_EGG_VERSION}
REVISION =		3

CATEGORIES =		net devel

HOMEPAGE =		https://github.com/giampaolo/pyftpdlib

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

NO_TEST =		Yes

.include <bsd.port.mk>
