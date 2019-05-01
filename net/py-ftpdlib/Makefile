# $OpenBSD: Makefile,v 1.21 2019/05/01 23:34:17 juanfra Exp $

COMMENT =		FTP server library for Python

MODPY_EGG_VERSION =	1.5.5
DISTNAME =		pyftpdlib-${MODPY_EGG_VERSION}
PKGNAME =		py-ftpdlib-${MODPY_EGG_VERSION}

CATEGORIES =		net devel

HOMEPAGE =		https://github.com/giampaolo/pyftpdlib

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

post-install:
	mv ${PREFIX}/bin/ftpbench ${PREFIX}/bin/ftpbench${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
