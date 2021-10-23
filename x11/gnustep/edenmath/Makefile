# $OpenBSD: Makefile,v 1.17 2021/10/19 19:43:36 sebastia Exp $

COMMENT =	GNUstep based scientific calcualtor

DISTNAME =	EdenMath_GNUstep-1.1.1
REVISION =	14

HOMEPAGE =	http://www.eskimo.com/~pburns/EdenMath/
MASTER_SITES =	${HOMEPAGE}/files/

MODULES =	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}

post-extract:
	rm ${WRKDIST}//EMResponder.m.orig

.include <bsd.port.mk>
