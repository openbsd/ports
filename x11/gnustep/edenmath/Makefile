# $OpenBSD: Makefile,v 1.7 2014/05/22 09:48:56 sebastia Exp $

COMMENT =	GNUstep based scientific calcualtor

DISTNAME =	EdenMath_GNUstep-1.1.1
REVISION =	4

HOMEPAGE =	http://www.eskimo.com/~pburns/EdenMath/
MASTER_SITES =	${HOMEPAGE}/files/

MODULES =	x11/gnustep

post-extract:
	rm ${WRKDIST}//EMResponder.m.orig

.include <bsd.port.mk>
