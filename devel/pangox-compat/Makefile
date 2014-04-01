# $OpenBSD: Makefile,v 1.6 2014/04/01 13:21:45 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		pangox compatibility library

GNOME_VERSION=		0.0.2
GNOME_PROJECT=		pangox-compat
REVISION=		1

SHARED_LIBS +=  pangox-1.0         2906.0   # 0.0

CATEGORIES=		devel x11

HOMEPAGE=		http://www.pango.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 ffi glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m pango-1.0 pcre pthread xcb

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/pango>=1.31.2

CONFIGURE_STYLE=	gnu

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples

.include <bsd.port.mk>
