# $OpenBSD: Makefile,v 1.2 2010/04/26 03:01:06 jakemsr Exp $

COMMENT=	IT/MOD/XM player and library

DISTNAME=	dumb-0.9.3
PKGNAME=	${DISTNAME}p0

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
WANTLIB=	c m pthread

NO_REGRESS=	Yes

.include <bsd.port.mk>
