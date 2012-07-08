# $OpenBSD: Makefile,v 1.3 2012/07/08 14:15:11 sebastia Exp $

COMMENT =	GNUstep based scientific calcualtor

DISTNAME =	EdenMath_GNUstep-1.1.1
REVISION =	0

HOMEPAGE =	http://www.eskimo.com/~pburns/EdenMath/
MASTER_SITES =	${HOMEPAGE}/files/

MODULES =	x11/gnustep
WANTLIB +=	c m pthread

post-extract:
	rm ${WRKDIST}//EMResponder.m.orig

.include <bsd.port.mk>
