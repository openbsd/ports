COMMENT=	GNUstep mail application

DISTNAME =	GNUMail-1.4.0
SHLIB_VERSION =	3.0
SHARED_LIBS =	GNUMail ${SHLIB_VERSION}
CATEGORIES=	mail
REVISION =	0

HOMEPAGE=	https://savannah.nongnu.org/projects/gnustep-nonfsf/

WANTLIB +=	crypto ssl AddressView Addresses Pantomime
WANTLIB += ${COMPILER_LIBCXX}

SITES=		https://download.savannah.nongnu.org/releases/gnustep-nonfsf/

MODULES=	x11/gnustep
LIB_DEPENDS=	x11/gnustep/addresses \
		x11/gnustep/pantomime>=1.3.0

MAKE_ENV+=	GNUMail_INTERFACE_VERSION=${LIBGNUMail_VERSION}

BUNDLES=	Account Advanced Clock Colors Compose Emoticon Fonts \
		Filtering Face Import MIME PGP Receiving Sending Viewing

SUBST_VARS +=	SHLIB_VERSION

.include <bsd.port.mk>
