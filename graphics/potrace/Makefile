# $OpenBSD: Makefile,v 1.13 2019/10/23 10:23:56 sthen Exp $

COMMENT=	transform bitmaps into vector graphics

DISTNAME=	potrace-1.16
SHARED_LIBS +=  potrace              0.1      # 0.3
CATEGORIES=	graphics

HOMEPAGE=	http://potrace.sourceforge.net

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c m z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=potrace/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-libpotrace

TEST_DEPENDS=	print/ghostscript/gnu

.include <bsd.port.mk>
