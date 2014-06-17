# $OpenBSD: Makefile,v 1.12 2014/06/17 01:53:06 juanfra Exp $

COMMENT =		FTP server library for Python

MODPY_EGG_VERSION =	1.4.0
DISTNAME =		pyftpdlib-${MODPY_EGG_VERSION}
PKGNAME =		py-ftpdlib-${MODPY_EGG_VERSION}

CATEGORIES =		net devel

HOMEPAGE =		https://pyftpdlib.googlecode.com/

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=p/pyftpdlib/}

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

NO_TEST =		Yes

.include <bsd.port.mk>
