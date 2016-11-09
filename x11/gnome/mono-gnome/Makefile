# $OpenBSD: Makefile,v 1.36 2016/11/09 11:18:37 ajacoutot Exp $

COMMENT=		.NET language bindings for assorted GNOME libraries

GNOME_PROJECT=		gnome-sharp
GNOME_VERSION=		2.24.2
PKGNAME=		mono-gnome-${VERSION}
REVISION=		8

CATEGORIES=		x11

HOMEPAGE=		http://mono-project.com/GtkSharp

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2
WANTLIB += atk-1.0 bonobo-2 bonobo-activation bonoboui-2 cairo
WANTLIB += canberra crypto dbus-1 dbus-glib-1 expat ffi fontconfig
WANTLIB += freetype gailutil gconf-2 gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-2 gnome-keyring
WANTLIB += gnomecanvas-2 gnomeui-2 gnomevfs-2 gobject-2.0 gpg-error
WANTLIB += graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz iconv intl
WANTLIB += ltdl lzma m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png popt pthread pthread-stubs ssl util
WANTLIB += vorbis vorbisfile xcb xcb-render xcb-shm xml2 z

EXTRACT_SUFX=		.tar.bz2

MODULES=		lang/mono \
			x11/gnome

LIB_DEPENDS=		x11/gnome/libgnomeui

RUN_DEPENDS=		x11/mono-gtk2
BUILD_DEPENDS=		x11/mono-gtk2

DLLMAP_FILES=		art/art-sharp.dll.config \
			gnome/gnome-sharp.dll.config \
			gconf/GConf/gconf-sharp.dll.config \
			gnomevfs/gnome-vfs-sharp.dll.config

pre-configure:
	find ${WRKSRC} -name *\.pc.in -exec sed -i \
		's,^prefix=.*,prefix=\@prefix\@,' {} \;

post-install:
	rm ${PREFIX}/lib/libgnomesharpglue-2.{a,la}

.include <bsd.port.mk>
