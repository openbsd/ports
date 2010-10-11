# $OpenBSD: Makefile,v 1.23 2010/10/11 08:19:20 jasper Exp $

COMMENT=	.NET language bindings for assorted GNOME libraries

GNOME_PROJECT=	gnome-sharp
GNOME_VERSION=	2.24.2
PKGNAME=	mono-gnome-${VERSION}
REVISION=	0

CATEGORIES=	x11

HOMEPAGE=	http://mono-project.com/GtkSharp

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext \
		lang/mono \
		x11/gnome

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation \
		bonoboui-2 cairo crypto dbus-1 dbus-glib-1 expat \
		fontconfig freetype gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 \
		glib-2.0 gmodule-2.0 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomevfs-2 gobject-2.0 gnomeui-2 \
		gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png popt ssl util xml2 z gio-2.0 \
		pthread-stubs xcb gcrypt gpg-error xcb-render xcb-render-util \
		canberra ltdl ogg pthread vorbis vorbisfile \
		GL X11-xcb Xxf86vm drm xcb-shm

LIB_DEPENDS=	::x11/gnome/libgnomeui

RUN_DEPENDS=	::x11/mono-gtk2
BUILD_DEPENDS=	${RUN_DEPENDS}

DLLMAP_FILES=	art/art-sharp.dll.config \
		gnome/gnome-sharp.dll.config \
		gconf/GConf/gconf-sharp.dll.config \
		gnomevfs/gnome-vfs-sharp.dll.config

CONFIGURE_ARGS=	${CONFIGURE_SHARED}

pre-configure:
	find ${WRKSRC} -name *\.pc.in -exec perl -pi \
		-e 's,^prefix=.*,prefix=\@prefix\@,,' {} \;

.include <bsd.port.mk>
