# $OpenBSD: Makefile,v 1.7 2013/10/19 13:24:57 sebastia Exp $

COMMENT =	GNUstep client for salesforce.com

DISTNAME =	DataBasin-0.6
REVISION =	0

HOMEPAGE =	http://gap.nongnu.org/databasin/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

# LGPL

MODULES =	x11/gnustep
WANTLIB += 	c m pthread WebServices
LIB_DEPENDS +=	x11/gnustep/webservices

.include <bsd.port.mk>
