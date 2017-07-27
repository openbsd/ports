# $OpenBSD: Makefile,v 1.17 2017/07/27 11:01:33 sthen Exp $

COMMENT =	GNUstep client for salesforce.com

DISTNAME =	DataBasin-0.9
REVISION =	2

HOMEPAGE =	http://gap.nongnu.org/databasin/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

# GPLv2 or later

MODULES =	x11/gnustep
WANTLIB += 	WebServices DataBasinKit
WANTLIB += ${COMPILER_LIBCXX}
LIB_DEPENDS +=	x11/gnustep/databasinkit \
		x11/gnustep/webservices

.include <bsd.port.mk>
