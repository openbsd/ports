# $OpenBSD: Makefile,v 1.5 2013/03/11 11:42:42 espie Exp $

PKG_ARCH=	*

COMMENT=	translate XML documents with PO files

DISTNAME=	itstool-1.2.0
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	textproc

HOMEPAGE=	http://itstool.org/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes


MASTER_SITES=	http://files.itstool.org/itstool/

MODULES=	lang/python

MODPY_ADJ_FILES=itstool.in

RUN_DEPENDS=	textproc/libxml,-python

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
