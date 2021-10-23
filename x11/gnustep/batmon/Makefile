# $OpenBSD: Makefile,v 1.19 2021/10/19 19:43:36 sebastia Exp $

COMMENT =	GNUstep battery monitor
ONLY_FOR_ARCHS =	${APM_ARCHS}

DISTNAME =	batmon-0.8
REVISION =	9
CATEGORIES =	sysutils

HOMEPAGE =	http://gap.nongnu.org/batmon/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}

.include <bsd.port.mk>
