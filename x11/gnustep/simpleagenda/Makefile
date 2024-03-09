COMMENT=	calendaring application based on GNUstep

GH_ACCOUNT =	poroussel
GH_PROJECT =	simpleagenda
GH_TAGNAME =	v0.46
#DISTNAME=	SimpleAgenda-${VERSION}
CATEGORIES+=	productivity
REVISION =	0

MODULES =	x11/gnustep

WANTLIB +=	ical Addresses DBusKit
WANTLIB += ${COMPILER_LIBCXX}
LIB_DEPENDS =	x11/gnustep/addresses \
		x11/gnustep/dbuskit \
		textproc/libical

CONFIGURE_STYLE=gnu
CONFIGURE_ENV +=	GNUSTEP_MAKEFILES=`gnustep-config --variable=GNUSTEP_MAKEFILES`
CONFIGURE_ENV +=	CPPFLAGS=-I${LOCALBASE}/include

.include <bsd.port.mk>
