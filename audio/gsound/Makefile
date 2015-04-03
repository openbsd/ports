# $OpenBSD: Makefile,v 1.1.1.1 2015/04/03 16:28:39 ajacoutot Exp $

COMMENT=		GObject library for playing system sounds

GNOME_PROJECT=		gsound
GNOME_VERSION=		1.0.1

SHARED_LIBS +=  gsound                    0.0 # 0.0

CATEGORIES=		audio

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c canberra ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += ltdl m ogg pcre pthread vorbis vorbisfile z

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

LIB_DEPENDS=		audio/libcanberra \
			devel/glib2

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
