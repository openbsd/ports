# $OpenBSD: Makefile,v 1.1.1.1 2009/10/15 14:35:29 phessler Exp $

COMMENT=	IT/MOD/XM player and library

DISTNAME=	dumb-0.9.3

CATEGORIES=	audio

HOMEPAGE=	http://dumb.sourceforge.net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dumb/}

# free, with some not-seriously-intended joke clauses
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	yes
LIB_DEPENDS=	alleg::games/allegro
WANTLIB=	c m sndio

NO_REGRESS=	Yes

.include <bsd.port.mk>
