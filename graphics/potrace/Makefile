# $OpenBSD: Makefile,v 1.6 2015/02/16 22:57:08 naddy Exp $

COMMENT=		transforming bitmaps into vector graphics

DISTNAME=		potrace-1.7
CATEGORIES=		graphics

HOMEPAGE=		http://potrace.sourceforge.net

MAINTAINER=		Matt Jibson <dolmant@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=potrace/}

WANTLIB=		c m z

CONFIGURE_STYLE=	gnu

TEST_DEPENDS=	print/ghostscript/gnu

.include <bsd.port.mk>
