# $OpenBSD: Makefile,v 1.9 2014/10/06 17:02:18 sebastia Exp $

COMMENT =	GNUstep client for salesforce.com

DISTNAME =	DataBasin-0.7

HOMEPAGE =	http://gap.nongnu.org/databasin/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

# LGPL

MODULES =	x11/gnustep
WANTLIB += 	WebServices
LIB_DEPENDS +=	x11/gnustep/webservices

.include <bsd.port.mk>
