# $OpenBSD: Makefile,v 1.2 2015/10/28 09:34:15 sebastia Exp $

COMMENT =	GNUstep client framework for salesforce.com

REVISION =	0
DISTNAME =	DataBasinKit-0.8
SHARED_LIBS +=  DataBasinKit	0.0

HOMEPAGE =	http://gap.nongnu.org/databasin/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

# LGPLv2 or later

MODULES =			x11/gnustep
MODGNUSTEP_IS_FRAMEWORK = 	Yes
WANTLIB +=			pthread
BUILD_DEPENDS +=		x11/gnustep/gui \
				x11/gnustep/webservices

MAKE_FLAGS +=	DataBasinKit_INTERFACE_VERSION=${LIBDataBasinKit_VERSION}

.include <bsd.port.mk>
