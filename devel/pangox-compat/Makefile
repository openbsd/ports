# $OpenBSD: Makefile,v 1.11 2019/10/26 09:31:59 ajacoutot Exp $

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
