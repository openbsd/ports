# $OpenBSD: Makefile,v 1.1.1.1 2010/10/25 09:39:31 sebastia Exp $

COMMENT=	calendaring application based on GNUstep
VERSION=	0.41

DISTNAME=	SimpleAgenda-${VERSION}
PKGNAME=	${DISTNAME:L}
CATEGORIES+=	productivity

MASTER_SITES=	http://coyote.octets.fr/pub/gnustep/
HOMEPAGE=	http://coyote.octets.fr/simpleagenda/

MODULES=	x11/gnustep

WANTLIB+=	c m objc pthread gnustep-base gnustep-gui
WANTLIB+=	e2fs-uuid ical Addresses
LIB_DEPENDS=    ::x11/gnustep/gui \
		::x11/gnustep/addresses \
		::sysutils/e2fsprogs \
		::textproc/libical
RUN_DEPENDS=    :gnustep-back-*:x11/gnustep/back

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	GNUSTEP_MAKEFILES=`gnustep-config --variable=GNUSTEP_MAKEFILES`
CONFIGURE_ENV+=	CFLAGS=-I${LOCALBASE}/include

.include <bsd.port.mk>
