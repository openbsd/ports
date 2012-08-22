# $OpenBSD: Makefile,v 1.4 2012/08/22 07:15:52 sebastia Exp $

COMMENT =	GNUstep based scientific calcualtor

DISTNAME =	EdenMath_GNUstep-1.1.1
REVISION =	1

HOMEPAGE =	http://www.eskimo.com/~pburns/EdenMath/
MASTER_SITES =	${HOMEPAGE}/files/

MODULES =	x11/gnustep
WANTLIB +=	c m pthread

post-extract:
	rm ${WRKDIST}//EMResponder.m.orig

.include <bsd.port.mk>
