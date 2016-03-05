# $OpenBSD: Makefile,v 1.10 2016/03/05 16:04:07 pascal Exp $

COMMENT =	GNUstep based scientific calcualtor

DISTNAME =	EdenMath_GNUstep-1.1.1
REVISION =	7

HOMEPAGE =	http://www.eskimo.com/~pburns/EdenMath/
MASTER_SITES =	${HOMEPAGE}/files/

MODULES =	x11/gnustep

post-extract:
	rm ${WRKDIST}//EMResponder.m.orig

.include <bsd.port.mk>
