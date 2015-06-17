# $OpenBSD: Makefile,v 1.18 2015/06/17 16:52:55 ajacoutot Exp $

COMMENT=	implementation of the iCalendar protocols and data units

V=		1.0.1
DISTNAME=	libical-${V}
REVISION=	0

GH_ACCOUNT=	libical
GH_PROJECT=	libical
GH_TAGNAME=	v${V}

SHARED_LIBS +=  ical                 2.0
SHARED_LIBS +=  icalss               2.0
SHARED_LIBS +=  icalvcal             1.0

CATEGORIES=	textproc

HOMEPAGE=	https://libical.github.io/libical/

# MPL/LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/cmake

WANTLIB += pthread

BUILD_DEPENDS=	devel/gobject-introspection

CONFIGURE_ARGS= -DGOBJECT_INTROSPECTION=true

.include <bsd.port.mk>
