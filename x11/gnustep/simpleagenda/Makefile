# $OpenBSD: Makefile,v 1.24 2021/10/19 19:43:38 sebastia Exp $

COMMENT=	calendaring application based on GNUstep

VERSION=	0.43
REVISION=	12
DISTNAME=	SimpleAgenda-${VERSION}
CATEGORIES+=	productivity

MASTER_SITES=	http://coyote.octets.fr/pub/gnustep/
HOMEPAGE=	http://coyote.octets.fr/simpleagenda/

MODULES =	x11/gnustep

WANTLIB +=	uuid ical Addresses DBusKit
WANTLIB += ${COMPILER_LIBCXX}
LIB_DEPENDS =	x11/gnustep/addresses \
		x11/gnustep/dbuskit \
		sysutils/e2fsprogs>=1.42.7 \
		textproc/libical

CONFIGURE_STYLE=gnu
CONFIGURE_ENV +=	GNUSTEP_MAKEFILES=`gnustep-config --variable=GNUSTEP_MAKEFILES`
CONFIGURE_ENV +=	CPPFLAGS=-I${LOCALBASE}/include

.include <bsd.port.mk>
