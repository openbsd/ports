# $OpenBSD: Makefile,v 1.4 2012/07/08 13:39:16 sebastia Exp $

COMMENT =	GNUstep client for salesforce.com

DISTNAME =	DataBasin-0.5

HOMEPAGE =	http://gap.nongnu.org/databasin/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

# LGPL

MODULES =	x11/gnustep
WANTLIB += 	c m pthread WebServices
LIB_DEPENDS +=	x11/gnustep/webservices

.include <bsd.port.mk>
