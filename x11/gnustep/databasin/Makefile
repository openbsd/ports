# $OpenBSD: Makefile,v 1.3 2012/01/08 12:03:09 sebastia Exp $

COMMENT =	GNUstep client for salesforce.com

DISTNAME =	DataBasin-0.4

HOMEPAGE =	http://gap.nongnu.org/databasin/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

# LGPL

MODULES =	x11/gnustep
WANTLIB += 	c m pthread WebServices
LIB_DEPENDS +=	x11/gnustep/webservices

.include <bsd.port.mk>
