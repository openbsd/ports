# $OpenBSD: Makefile,v 1.9 2015/10/26 11:53:14 sebastia Exp $

COMMENT =	GNUstep based scientific calcualtor

DISTNAME =	EdenMath_GNUstep-1.1.1
REVISION =	6

HOMEPAGE =	http://www.eskimo.com/~pburns/EdenMath/
MASTER_SITES =	${HOMEPAGE}/files/

MODULES =	x11/gnustep

post-extract:
	rm ${WRKDIST}//EMResponder.m.orig

.include <bsd.port.mk>
