# $OpenBSD: Makefile,v 1.1.1.1 2011/08/22 08:03:26 sebastia Exp $

COMMENT =	GNUstep client for salesforce.com

DISTNAME =	DataBasin-0.3

HOMEPAGE =	http://gap.nongnu.org/databasin/
MASTER_SITES =	http://savannah.nongnu.org/download/gap/

# LGPL

MODULES =	x11/gnustep
WANTLIB += 	c m pthread WebServices
LIB_DEPENDS +=	x11/gnustep/webservices

.include <bsd.port.mk>
