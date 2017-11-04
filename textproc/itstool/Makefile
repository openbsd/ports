# $OpenBSD: Makefile,v 1.7 2017/11/04 21:11:06 jasper Exp $

PKG_ARCH=	*

COMMENT=	translate XML documents with PO files

DISTNAME=	itstool-2.0.4
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	textproc

HOMEPAGE=	http://itstool.org/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://files.itstool.org/itstool/

MODULES=	lang/python

RUN_DEPENDS=	textproc/libxml,-python

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
