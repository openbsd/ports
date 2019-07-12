# $OpenBSD: Makefile,v 1.12 2019/07/12 20:50:00 sthen Exp $

PKG_ARCH=		*

COMMENT=		translate XML documents with PO files

DISTNAME=		itstool-2.0.6
EXTRACT_SUFX=		.tar.bz2

CATEGORIES=		textproc

HOMEPAGE=		http://itstool.org/

# GPLv3+
PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://files.itstool.org/itstool/

MODULES=		lang/python

RUN_DEPENDS=		textproc/libxml,-python

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
