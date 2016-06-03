# $OpenBSD: Makefile,v 1.11 2016/06/03 11:57:57 sebastia Exp $

COMMENT =	GNUstep based scientific calcualtor

DISTNAME =	EdenMath_GNUstep-1.1.1
REVISION =	8

HOMEPAGE =	http://www.eskimo.com/~pburns/EdenMath/
MASTER_SITES =	${HOMEPAGE}/files/

MODULES =	x11/gnustep

post-extract:
	rm ${WRKDIST}//EMResponder.m.orig

.include <bsd.port.mk>
