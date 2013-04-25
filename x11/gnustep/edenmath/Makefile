# $OpenBSD: Makefile,v 1.5 2013/04/25 16:40:11 sebastia Exp $

COMMENT =	GNUstep based scientific calcualtor

DISTNAME =	EdenMath_GNUstep-1.1.1
REVISION =	2

HOMEPAGE =	http://www.eskimo.com/~pburns/EdenMath/
MASTER_SITES =	${HOMEPAGE}/files/

MODULES =	x11/gnustep
WANTLIB +=	c m pthread

post-extract:
	rm ${WRKDIST}//EMResponder.m.orig

.include <bsd.port.mk>
