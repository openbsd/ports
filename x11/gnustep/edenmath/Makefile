# $OpenBSD: Makefile,v 1.8 2014/11/21 18:21:21 sebastia Exp $

COMMENT =	GNUstep based scientific calcualtor

DISTNAME =	EdenMath_GNUstep-1.1.1
REVISION =	5

HOMEPAGE =	http://www.eskimo.com/~pburns/EdenMath/
MASTER_SITES =	${HOMEPAGE}/files/

MODULES =	x11/gnustep

post-extract:
	rm ${WRKDIST}//EMResponder.m.orig

.include <bsd.port.mk>
