# $OpenBSD: Makefile,v 1.2 2011/06/22 17:39:46 sebastia Exp $

COMMENT =	GNUstep based scientific calcualtor

DISTNAME =	EdenMath_GNUstep-1.1.1

HOMEPAGE =	http://www.eskimo.com/~pburns/EdenMath/
MASTER_SITES =	${HOMEPAGE}/files/

MODULES =	x11/gnustep
WANTLIB +=	c m pthread

post-extract:
	rm ${WRKDIST}//EMResponder.m.orig

.include <bsd.port.mk>
