# $OpenBSD: Makefile,v 1.16 2019/10/16 13:45:04 ajacoutot Exp $

COMMENT =	GNUstep battery monitor
ONLY_FOR_ARCHS =	${APM_ARCHS}

DISTNAME =	batmon-0.8
REVISION =	6
CATEGORIES =	sysutils

HOMEPAGE =	http://gap.nongnu.org/batmon/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}

.include <bsd.port.mk>
