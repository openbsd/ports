# $OpenBSD: Makefile,v 1.7 2015/06/19 14:23:33 jasper Exp $

COMMENT=		transforming bitmaps into vector graphics

DISTNAME=		potrace-1.12
SHARED_LIBS +=  potrace              0.0      # 0.2
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
