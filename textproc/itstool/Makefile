# $OpenBSD: Makefile,v 1.17 2021/10/25 07:22:12 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		translate XML documents with PO files

DISTNAME=		itstool-2.0.7

CATEGORIES=		textproc

HOMEPAGE=		http://itstool.org/

# GPLv3+
PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://files.itstool.org/itstool/
EXTRACT_SUFX=		.tar.bz2

MODULES=		lang/python

RUN_DEPENDS=		textproc/libxml,-python

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
