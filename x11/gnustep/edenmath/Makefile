# $OpenBSD: Makefile,v 1.14 2019/10/16 13:45:04 ajacoutot Exp $

COMMENT =	GNUstep based scientific calcualtor

DISTNAME =	EdenMath_GNUstep-1.1.1
REVISION =	11

HOMEPAGE =	http://www.eskimo.com/~pburns/EdenMath/
MASTER_SITES =	${HOMEPAGE}/files/

MODULES =	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}

post-extract:
	rm ${WRKDIST}//EMResponder.m.orig

.include <bsd.port.mk>
