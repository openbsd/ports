# $OpenBSD: Makefile,v 1.8 2014/05/22 09:48:56 sebastia Exp $

COMMENT =	GNUstep client for salesforce.com

DISTNAME =	DataBasin-0.6
REVISION =	1

HOMEPAGE =	http://gap.nongnu.org/databasin/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

# LGPL

MODULES =	x11/gnustep
WANTLIB += 	WebServices
LIB_DEPENDS +=	x11/gnustep/webservices

.include <bsd.port.mk>
