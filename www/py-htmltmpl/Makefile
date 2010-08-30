# $OpenBSD: Makefile,v 1.2 2010/08/30 22:02:34 sthen Exp $

COMMENT=	templating engine for separation of code and HTML

MODPY_EGG_VERSION= 1.22
DISTNAME=	htmltmpl-${MODPY_EGG_VERSION}
PKGNAME=	py-htmltmpl-${MODPY_EGG_VERSION}
REVISION=	0

CATEGORIES=	www devel

HOMEPAGE=	http://htmltmpl.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=htmltmpl/}

MODULES=	lang/python

PKG_ARCH=	*

do-regress:
	cd ${WRKBUILD} && ${MODPY_BIN} test.py

.include <bsd.port.mk>
