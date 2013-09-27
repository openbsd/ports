# $OpenBSD: Makefile,v 1.29 2013/09/27 17:49:11 ajacoutot Exp $

COMMENT=	.NET language bindings for assorted GNOME libraries

GNOME_PROJECT=	gnome-sharp
GNOME_VERSION=	2.24.2
PKGNAME=	mono-gnome-${VERSION}
REVISION=	2

CATEGORIES=	x11

HOMEPAGE=	http://mono-project.com/GtkSharp

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

EXTRACT_SUFX=		.tar.bz2

MODULES=	devel/gettext \
		lang/mono \
		x11/gnome

WANTLIB += GL ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xxf86vm art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation
WANTLIB += bonoboui-2 cairo canberra crypto dbus-1 dbus-glib-1
WANTLIB += drm expat ffi fontconfig freetype gailutil gconf-2
WANTLIB += gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 gnomeui-2
WANTLIB += gnomevfs-2 gobject-2.0 gpg-error gthread-2.0 gtk-x11-2.0
WANTLIB += ltdl m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png popt pthread-stubs ssl stdc++ util vorbis
WANTLIB += vorbisfile xcb xcb-render xcb-shm xml2 z

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
