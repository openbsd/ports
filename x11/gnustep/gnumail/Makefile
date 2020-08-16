# $OpenBSD: Makefile,v 1.32 2020/08/16 20:35:19 sebastia Exp $

COMMENT=	GNUstep mail application

DISTNAME =	GNUMail-1.3.0
REVISION =	3
SHLIB_VERSION =	3.0
SHARED_LIBS =	GNUMail ${SHLIB_VERSION}
CATEGORIES=	mail

HOMEPAGE=	https://savannah.nongnu.org/projects/gnustep-nonfsf/

WANTLIB +=	crypto ssl AddressView Addresses Pantomime
WANTLIB += ${COMPILER_LIBCXX}

MASTER_SITES=	https://download.savannah.nongnu.org/releases/gnustep-nonfsf/

MODULES=	x11/gnustep
LIB_DEPENDS=	x11/gnustep/addresses \
		x11/gnustep/pantomime>=1.3.0

MAKE_ENV+=	GNUMail_INTERFACE_VERSION=${LIBGNUMail_VERSION}

BUNDLES=	Account Advanced Clock Colors Compose Emoticon Fonts \
		Filtering Face Import MIME PGP Receiving Sending Viewing

SUBST_VARS +=	SHLIB_VERSION

.include <bsd.port.mk>
