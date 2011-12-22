# $OpenBSD: Makefile,v 1.2 2011/12/22 18:44:01 sebastia Exp $

COMMENT =	GNUstep client for salesforce.com

DISTNAME =	DataBasin-0.4

HOMEPAGE =	http://gap.nongnu.org/databasin/
MASTER_SITES =	http://savannah.nongnu.org/download/gap/

# LGPL

MODULES =	x11/gnustep
WANTLIB += 	c m pthread WebServices
LIB_DEPENDS +=	x11/gnustep/webservices

.include <bsd.port.mk>
