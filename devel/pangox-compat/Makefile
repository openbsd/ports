# $OpenBSD: Makefile,v 1.12 2019/12/16 15:50:08 ajacoutot Exp $

BROKEN=			does not build with pango >=1.44

COMMENT=		pangox compatibility library

GNOME_VERSION=		0.0.2
GNOME_PROJECT=		pangox-compat
REVISION=		4

SHARED_LIBS +=  pangox-1.0         2906.0   # 0.0

CATEGORIES=		devel x11

HOMEPAGE=		http://www.pango.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += X11 ffi fribidi glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += iconv intl m pango-1.0 pcre pthread xcb

MODULES=		x11/gnome

LIB_DEPENDS=		devel/pango>=1.31.2

CONFIGURE_STYLE=	gnu

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples

.include <bsd.port.mk>
