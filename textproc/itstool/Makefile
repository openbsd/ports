# $OpenBSD: Makefile,v 1.14 2020/06/09 07:19:47 jasper Exp $

PKG_ARCH=		*

COMMENT=		translate XML documents with PO files

DISTNAME=		itstool-2.0.6
REVISION=		1

CATEGORIES=		textproc

HOMEPAGE=		http://itstool.org/

# GPLv3+
PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://files.itstool.org/itstool/
EXTRACT_SUFX=		.tar.bz2

MODULES=		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS=		textproc/libxml,-python

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
