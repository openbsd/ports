# $OpenBSD: Makefile,v 1.16 2017/04/19 21:17:53 sebastia Exp $

COMMENT =	GNUstep client for salesforce.com

DISTNAME =	DataBasin-0.9
REVISION =	1

HOMEPAGE =	http://gap.nongnu.org/databasin/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

# GPLv2 or later

MODULES =	x11/gnustep
WANTLIB += 	WebServices DataBasinKit
LIB_DEPENDS +=	x11/gnustep/databasinkit \
		x11/gnustep/webservices

.include <bsd.port.mk>
