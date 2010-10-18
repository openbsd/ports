# $OpenBSD: Makefile,v 1.3 2010/10/18 18:13:15 espie Exp $

COMMENT=		transforming bitmaps into vector graphics

DISTNAME=		potrace-1.7
CATEGORIES=		graphics

HOMEPAGE=		http://potrace.sourceforge.net

MAINTAINER=		Matt Jibson <dolmant@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=potrace/}

WANTLIB=		c m z

CONFIGURE_STYLE=	gnu
USE_GROFF =	Yes

REGRESS_DEPENDS=	:ghostscript-*:print/ghostscript/gnu

.include <bsd.port.mk>
