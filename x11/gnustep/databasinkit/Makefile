# $OpenBSD: Makefile,v 1.3 2016/03/05 16:04:07 pascal Exp $

COMMENT =	GNUstep client framework for salesforce.com

REVISION =	1
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
