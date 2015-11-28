# $OpenBSD: Makefile,v 1.8 2015/11/28 21:52:28 kili Exp $

COMMENT=		transforming bitmaps into vector graphics

DISTNAME=		potrace-1.13
SHARED_LIBS +=  potrace              0.1      # 0.3
CATEGORIES=		graphics

HOMEPAGE=		http://potrace.sourceforge.net

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=potrace/}

WANTLIB=		c m z

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS +=	--with-libpotrace

TEST_DEPENDS=	print/ghostscript/gnu

.include <bsd.port.mk>
