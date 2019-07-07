# $OpenBSD: Makefile,v 1.41 2019/07/07 11:20:53 ajacoutot Exp $

COMMENT=		.NET language bindings for assorted GNOME libraries

GNOME_PROJECT=		gnome-sharp
GNOME_VERSION=		2.24.5
PKGNAME=		mono-gnome-${VERSION}
REVISION=		0

CATEGORIES=		x11

HOMEPAGE=		http://mono-project.com/GtkSharp
MASTER_SITES=		https://download.mono-project.com/sources/gnome-sharp2/

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2
WANTLIB += atk-1.0 bonobo-2 bonobo-activation bonoboui-2 cairo canberra
WANTLIB += crypto dbus-1 dbus-glib-1 expat ffi fontconfig freetype
WANTLIB += fribidi gailutil gconf-2 gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-2 gnome-keyring
WANTLIB += gnomecanvas-2 gnomeui-2 gnomevfs-2 gobject-2.0 gpg-error
WANTLIB += graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz iconv intl ltdl
WANTLIB += lzma m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png popt pthread ssl util vorbis vorbisfile xcb
WANTLIB += xcb-render xcb-shm xml2 z

EXTRACT_SUFX=		.tar.gz

MODULES=		lang/mono \
			x11/gnome

LIB_DEPENDS=		x11/gnome/libgnomeui

RUN_DEPENDS=		x11/mono-gtk2
BUILD_DEPENDS=		x11/mono-gtk2

DLLMAP_FILES=		art/art-sharp.dll.config \
			gnome/gnome-sharp.dll.config \
			gconf/GConf/gconf-sharp.dll.config \
			gnomevfs/gnome-vfs-sharp.dll.config

CONFIGURE_STYLE=	gnu

pre-configure:
	find ${WRKSRC} -name *\.pc.in -exec sed -i \
		's,^prefix=.*,prefix=\@prefix\@,' {} \;

post-install:
	rm ${PREFIX}/lib/libgnomesharpglue-2.{a,la}

.include <bsd.port.mk>
