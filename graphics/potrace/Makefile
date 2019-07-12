# $OpenBSD: Makefile,v 1.11 2019/07/12 20:47:08 sthen Exp $

COMMENT=		transforming bitmaps into vector graphics

DISTNAME=		potrace-1.15
SHARED_LIBS +=  potrace              0.1      # 0.3
CATEGORIES=		graphics

HOMEPAGE=		http://potrace.sourceforge.net

# GPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=potrace/}

WANTLIB=		c m z

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS +=	--with-libpotrace

TEST_DEPENDS=	print/ghostscript/gnu

.include <bsd.port.mk>
