# $OpenBSD: Makefile,v 1.5 2013/03/11 11:10:55 espie Exp $

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
USE_GROFF =		Yes

TEST_DEPENDS=	print/ghostscript/gnu

.include <bsd.port.mk>
