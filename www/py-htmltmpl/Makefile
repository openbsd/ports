# $OpenBSD: Makefile,v 1.5 2013/03/11 11:44:48 espie Exp $

COMMENT=	templating engine for separation of code and HTML

MODPY_EGG_VERSION= 1.22
DISTNAME=	htmltmpl-${MODPY_EGG_VERSION}
PKGNAME=	py-htmltmpl-${MODPY_EGG_VERSION}
REVISION=	2

CATEGORIES=	www devel

HOMEPAGE=	http://htmltmpl.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=htmltmpl/}

MODULES=	lang/python

PKG_ARCH=	*

do-test:
	cd ${WRKBUILD} && ${MODPY_BIN} test.py

.include <bsd.port.mk>
