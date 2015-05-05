# $OpenBSD: Makefile,v 1.31 2015/05/05 17:00:20 sthen Exp $

COMMENT=	.NET language bindings for assorted GNOME libraries

GNOME_PROJECT=	gnome-sharp
GNOME_VERSION=	2.24.2
PKGNAME=	mono-gnome-${VERSION}
REVISION=	4

CATEGORIES=	x11

HOMEPAGE=	http://mono-project.com/GtkSharp

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation bonoboui-2
WANTLIB += cairo canberra crypto dbus-1 dbus-glib-1 drm expat ffi
WANTLIB += fontconfig freetype gailutil gconf-2 gcrypt gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-2
WANTLIB += gnome-keyring gnomecanvas-2 gnomeui-2 gnomevfs-2 gobject-2.0
WANTLIB += gpg-error graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz ltdl
WANTLIB += lzma m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png popt pthread pthread-stubs ssl stdc++ util
WANTLIB += vorbis vorbisfile xcb xcb-render xcb-shm xml2 z

EXTRACT_SUFX=		.tar.bz2

MODULES=	devel/gettext \
		lang/mono \
		x11/gnome

LIB_DEPENDS=	x11/gnome/libgnomeui

RUN_DEPENDS=	x11/mono-gtk2
BUILD_DEPENDS=	${RUN_DEPENDS}

DLLMAP_FILES=	art/art-sharp.dll.config \
		gnome/gnome-sharp.dll.config \
		gconf/GConf/gconf-sharp.dll.config \
		gnomevfs/gnome-vfs-sharp.dll.config

pre-configure:
	find ${WRKSRC} -name *\.pc.in -exec perl -pi \
		-e 's,^prefix=.*,prefix=\@prefix\@,,' {} \;

.include <bsd.port.mk>
