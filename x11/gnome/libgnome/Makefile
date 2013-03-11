# $OpenBSD: Makefile,v 1.54 2013/03/11 11:46:11 espie Exp $

COMMENT=	libraries for the GNOME project

GNOME_PROJECT=	libgnome
GNOME_VERSION=	2.32.1
REVISION=	4

SHARED_LIBS +=	gnome-2		2402.0   # .3000.0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 m pcre pthread
WANTLIB += ssl util xml2 z bonobo-2 bonobo-activation gnomevfs-2
WANTLIB += canberra ltdl ogg vorbis vorbisfile dbus-1 ffi
WANTLIB += dbus-glib-1 gio-2.0 glib-2.0 ORBit-2 ORBitCosNaming-2
WANTLIB += c crypto popt

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

LIB_DEPENDS=	x11/gnome/libbonobo \
		x11/gnome/vfs2 \
		devel/popt \
		audio/libcanberra

USE_GROFF =	Yes
MODGCONF2_SCHEMAS_DIR= libgnome

CONFIGURE_ARGS+= --disable-esd

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/libgnome/

post-install:
	rm ${PREFIX}/lib/bonobo/monikers/*.{a,la}

.include <bsd.port.mk>
