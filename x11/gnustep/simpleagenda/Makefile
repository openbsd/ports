# $OpenBSD: Makefile,v 1.23 2019/10/20 08:03:04 ajacoutot Exp $

COMMENT=	calendaring application based on GNUstep

VERSION=	0.43
REVISION=	11
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
