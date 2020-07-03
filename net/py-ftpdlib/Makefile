# $OpenBSD: Makefile,v 1.24 2020/07/03 21:13:01 sthen Exp $

COMMENT =		FTP server library for Python

MODPY_EGG_VERSION =	1.5.6
DISTNAME =		pyftpdlib-${MODPY_EGG_VERSION}
PKGNAME =		py-ftpdlib-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		net devel

HOMEPAGE =		https://github.com/giampaolo/pyftpdlib

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

post-install:
	mv ${PREFIX}/bin/ftpbench ${PREFIX}/bin/ftpbench${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
