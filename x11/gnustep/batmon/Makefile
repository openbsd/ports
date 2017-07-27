# $OpenBSD: Makefile,v 1.14 2017/07/27 11:01:33 sthen Exp $

COMMENT =	GNUstep battery monitor
ONLY_FOR_ARCHS =	${APM_ARCHS}

DISTNAME =	batmon-0.8
REVISION =	4
CATEGORIES =	sysutils

HOMEPAGE =	http://gap.nongnu.org/batmon/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}

.include <bsd.port.mk>
