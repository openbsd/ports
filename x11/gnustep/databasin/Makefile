# $OpenBSD: Makefile,v 1.13 2016/03/05 16:04:07 pascal Exp $

COMMENT =	GNUstep client for salesforce.com

DISTNAME =	DataBasin-0.8
REVISION =	0

HOMEPAGE =	http://gap.nongnu.org/databasin/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

# GPLv2 or later

MODULES =	x11/gnustep
WANTLIB += 	WebServices DataBasinKit
LIB_DEPENDS +=	x11/gnustep/databasinkit \
		x11/gnustep/webservices

.include <bsd.port.mk>
