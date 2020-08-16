# $OpenBSD: Makefile,v 1.16 2020/08/16 20:35:19 sebastia Exp $

COMMENT =	GNUstep based scientific calcualtor

DISTNAME =	EdenMath_GNUstep-1.1.1
REVISION =	13

HOMEPAGE =	http://www.eskimo.com/~pburns/EdenMath/
MASTER_SITES =	${HOMEPAGE}/files/

MODULES =	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}

post-extract:
	rm ${WRKDIST}//EMResponder.m.orig

.include <bsd.port.mk>
