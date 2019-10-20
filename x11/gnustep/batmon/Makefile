# $OpenBSD: Makefile,v 1.17 2019/10/20 08:03:00 ajacoutot Exp $

COMMENT =	GNUstep battery monitor
ONLY_FOR_ARCHS =	${APM_ARCHS}

DISTNAME =	batmon-0.8
REVISION =	7
CATEGORIES =	sysutils

HOMEPAGE =	http://gap.nongnu.org/batmon/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}

.include <bsd.port.mk>
