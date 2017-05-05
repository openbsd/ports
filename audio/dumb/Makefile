# $OpenBSD: Makefile,v 1.9 2017/05/05 11:43:47 espie Exp $

COMMENT=	IT/MOD/XM player and library

DISTNAME=	dumb-0.9.3
REVISION=	1

CATEGORIES=	audio

HOMEPAGE=	http://dumb.sourceforge.net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dumb/}

# free, with some not-seriously-intended joke clauses
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	alleg c m pthread

USE_GMAKE=	yes
LIB_DEPENDS=	games/allegro

MAKE_FLAGS =	CC="${CC}" 

NO_TEST=	Yes

.include <bsd.port.mk>
