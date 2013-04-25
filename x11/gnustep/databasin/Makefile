# $OpenBSD: Makefile,v 1.6 2013/04/25 16:28:16 sebastia Exp $

COMMENT =	GNUstep client for salesforce.com

DISTNAME =	DataBasin-0.6

HOMEPAGE =	http://gap.nongnu.org/databasin/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

# LGPL

MODULES =	x11/gnustep
WANTLIB += 	c m pthread WebServices
LIB_DEPENDS +=	x11/gnustep/webservices

.include <bsd.port.mk>
