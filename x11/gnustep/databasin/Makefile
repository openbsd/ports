# $OpenBSD: Makefile,v 1.20 2019/10/16 13:45:04 ajacoutot Exp $

COMMENT =	GNUstep client for salesforce.com

DISTNAME =	DataBasin-1.0
REVISION =	1

HOMEPAGE =	http://gap.nongnu.org/databasin/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

# GPLv2 or later

MODULES =	x11/gnustep
WANTLIB += 	DataBasinKit WebServices
WANTLIB += ${COMPILER_LIBCXX}
LIB_DEPENDS +=	x11/gnustep/databasinkit

.include <bsd.port.mk>
