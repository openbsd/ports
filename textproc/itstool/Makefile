# $OpenBSD: Makefile,v 1.8 2017/11/05 10:04:25 ajacoutot Exp $

PKG_ARCH=	*

COMMENT=	translate XML documents with PO files

DISTNAME=	itstool-2.0.4
EXTRACT_SUFX=	.tar.bz2
REVISION=	0

CATEGORIES=	textproc

HOMEPAGE=	http://itstool.org/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://files.itstool.org/itstool/

MODULES=	lang/python

RUN_DEPENDS=	textproc/libxml,-python

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
