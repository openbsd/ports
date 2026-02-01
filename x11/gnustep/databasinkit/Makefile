COMMENT =	GNUstep client framework for salesforce.com

VERSION =	1.0
REVISION =	6
DISTNAME =	DataBasinKit-${VERSION}
SHARED_LIBS +=  DataBasinKit	0.2

HOMEPAGE =	http://gap.nongnu.org/databasin/
SITES =		${SITE_SAVANNAH:=gap/}

# LGPLv2 or later

MODULES =			x11/gnustep
MODGNUSTEP_IS_FRAMEWORK = 	Yes
WANTLIB +=			pthread WebServices c++abi objc2
BUILD_DEPENDS +=		x11/gnustep/gui
LIB_DEPENDS +=			x11/gnustep/webservices

MAKE_FLAGS +=	DataBasinKit_INTERFACE_VERSION=${LIBDataBasinKit_VERSION}

SUBST_VARS +=	VERSION

.include <bsd.port.mk>
