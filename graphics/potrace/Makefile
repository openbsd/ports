# $OpenBSD: Makefile,v 1.9 2017/05/28 09:39:26 jasper Exp $

COMMENT=		transforming bitmaps into vector graphics

DISTNAME=		potrace-1.14
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
