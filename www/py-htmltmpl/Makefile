# $OpenBSD: Makefile,v 1.6 2019/04/27 23:24:02 sthen Exp $

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

do-test:
	cd ${WRKBUILD} && ${MODPY_BIN} test.py

.include <bsd.port.mk>
