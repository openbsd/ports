# $OpenBSD: Makefile,v 1.2 2010/10/26 12:39:57 sebastia Exp $

COMMENT=	calendaring application based on GNUstep

VERSION=	0.41
REVISION=	0
DISTNAME=	SimpleAgenda-${VERSION}
PKGNAME=	${DISTNAME:L}
CATEGORIES+=	productivity

MASTER_SITES=	http://coyote.octets.fr/pub/gnustep/
HOMEPAGE=	http://coyote.octets.fr/simpleagenda/

MODULES=	x11/gnustep

WANTLIB+=	c m pthread e2fs-uuid ical Addresses 
LIB_DEPENDS=	::x11/gnustep/addresses \
		::sysutils/e2fsprogs \
		::textproc/libical

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	GNUSTEP_MAKEFILES=`gnustep-config --variable=GNUSTEP_MAKEFILES`
CONFIGURE_ENV+=	CFLAGS=-I${LOCALBASE}/include

.include <bsd.port.mk>
