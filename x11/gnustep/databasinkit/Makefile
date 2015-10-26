# $OpenBSD: Makefile,v 1.1.1.1 2015/10/26 12:39:58 sebastia Exp $

COMMENT =	GNUstep client framework for salesforce.com

DISTNAME =	DataBasinKit-0.8
SHARED_LIBS +=  DataBasinKit	0.0

HOMEPAGE =	http://gap.nongnu.org/databasin/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

# LGPLv2 or later

MODULES =			x11/gnustep
MODGNUSTEP_IS_FRAMEWORK = 	Yes
WANTLIB +=			pthread
BUILD_DEPENDS +=		x11/gnustep/webservices

MAKE_FLAGS +=	DataBasinKit_INTERFACE_VERSION=${LIBDataBasinKit_VERSION}

.include <bsd.port.mk>
