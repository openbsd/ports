# $OpenBSD: Makefile,v 1.11 2013/04/25 16:33:00 sebastia Exp $

COMMENT=	calendaring application based on GNUstep

VERSION =	0.43
DISTNAME=	SimpleAgenda-${VERSION}
CATEGORIES+=	productivity

MASTER_SITES=	http://coyote.octets.fr/pub/gnustep/
HOMEPAGE=	http://coyote.octets.fr/simpleagenda/

MODULES=	x11/gnustep

WANTLIB +=	c m pthread e2fs-uuid ical Addresses DBusKit
LIB_DEPENDS =	x11/gnustep/addresses \
		x11/gnustep/dbuskit \
		sysutils/e2fsprogs \
		textproc/libical

CONFIGURE_STYLE=gnu
CONFIGURE_ENV +=	GNUSTEP_MAKEFILES=`gnustep-config --variable=GNUSTEP_MAKEFILES`
CONFIGURE_ENV +=	CPPFLAGS=-I${LOCALBASE}/include

.include <bsd.port.mk>
