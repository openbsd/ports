# $OpenBSD: Makefile,v 1.66 2019/07/07 11:20:53 ajacoutot Exp $

COMMENT=		libraries for the GNOME project

GNOME_PROJECT=		libgnome
GNOME_VERSION=		2.32.1
EXTRACT_SUFX=		.tar.bz2
REVISION=		13

SHARED_LIBS +=	gnome-2		2402.0   # .3000.0

# LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += ORBit-2 ORBitCosNaming-2 bonobo-2 bonobo-activation c
WANTLIB += canberra crypto dbus-1 dbus-glib-1 ffi gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnomevfs-2 gobject-2.0 gthread-2.0 ltdl lzma m
WANTLIB += ogg pcre popt pthread ssl util vorbis vorbisfile xml2 z
WANTLIB += iconv intl

MODULES=		devel/gconf2 \
			x11/gnome

LIB_DEPENDS=		audio/libcanberra \
			devel/popt \
			x11/gnome/libbonobo \
			x11/gnome/vfs2

MODGCONF2_SCHEMAS_DIR= libgnome

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-esd

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/libgnome/

post-install:
	rm ${PREFIX}/lib/bonobo/monikers/*.{a,la}

.include <bsd.port.mk>
