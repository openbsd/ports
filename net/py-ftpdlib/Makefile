# $OpenBSD: Makefile,v 1.7 2013/09/25 07:13:02 sthen Exp $

COMMENT=		FTP server library for Python

MODPY_EGG_VERSION=	1.2.0
DISTNAME=		pyftpdlib-${MODPY_EGG_VERSION}
PKGNAME=		py-ftpdlib-${MODPY_EGG_VERSION}

CATEGORIES=		net devel

HOMEPAGE=		https://pyftpdlib.googlecode.com/

MAINTAINER =		Juan Francisco Cantero Hurtado <iam@juanfra.info>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://pyftpdlib.googlecode.com/files/

MODULES=		lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_BADEGGS =	pyftpdlib

NO_TEST=		Yes

.include <bsd.port.mk>
