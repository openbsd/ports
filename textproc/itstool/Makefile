# $OpenBSD: Makefile,v 1.4 2012/09/27 10:56:56 ajacoutot Exp $

PKG_ARCH=	*

COMMENT=	translate XML documents with PO files

DISTNAME=	itstool-1.2.0
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	textproc

HOMEPAGE=	http://itstool.org/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes


MASTER_SITES=	http://files.itstool.org/itstool/

MODULES=	lang/python

MODPY_ADJ_FILES=itstool.in

RUN_DEPENDS=	textproc/libxml,-python

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
