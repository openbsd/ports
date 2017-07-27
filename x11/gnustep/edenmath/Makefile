# $OpenBSD: Makefile,v 1.12 2017/07/27 11:01:33 sthen Exp $

COMMENT =	GNUstep based scientific calcualtor

DISTNAME =	EdenMath_GNUstep-1.1.1
REVISION =	9

HOMEPAGE =	http://www.eskimo.com/~pburns/EdenMath/
MASTER_SITES =	${HOMEPAGE}/files/

MODULES =	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}

post-extract:
	rm ${WRKDIST}//EMResponder.m.orig

.include <bsd.port.mk>
