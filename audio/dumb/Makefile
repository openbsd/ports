# $OpenBSD: Makefile,v 1.6 2012/05/31 15:16:33 landry Exp $

COMMENT=	IT/MOD/XM player and library

DISTNAME=	dumb-0.9.3
REVISION=	0

CATEGORIES=	audio

HOMEPAGE=	http://dumb.sourceforge.net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dumb/}

# free, with some not-seriously-intended joke clauses
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	alleg c m pthread

USE_GMAKE=	yes
LIB_DEPENDS=	games/allegro

MAKE_FLAGS =	CC="${CC}"

NO_REGRESS=	Yes

.include <bsd.port.mk>
