# $OpenBSD: Makefile,v 1.10 2014/11/21 18:21:21 sebastia Exp $

COMMENT =	GNUstep client for salesforce.com

DISTNAME =	DataBasin-0.7
REVISION =	0

HOMEPAGE =	http://gap.nongnu.org/databasin/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

# LGPL

MODULES =	x11/gnustep
WANTLIB += 	WebServices
LIB_DEPENDS +=	x11/gnustep/webservices

.include <bsd.port.mk>
