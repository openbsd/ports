# $OpenBSD: Makefile,v 1.15 2009/04/06 10:05:21 ajacoutot Exp $

BROKEN=			segfault on startup

COMMENT=		personal photo management application for GNOME

GNOME_VERSION=		0.5.0.3
GNOME_PROJECT=		f-spot
PKGNAME=		${DISTNAME}p5
SHARED_LIBS +=	fspoteog             0.0      # .0.0
SHARED_LIBS +=	fspotjpegtran        0.0      # .0.0
SHARED_LIBS +=	fspot                0.0      # .0.0
CATEGORIES=		graphics

HOMEPAGE=		http://www.f-spot.org/

# GPLv2
# gio-sharp: LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			lang/mono \
			x11/gnome

USE_X11=		Yes

DESKTOP_FILES=		Yes
MODGNOME_HELP_FILES=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation
WANTLIB += bonoboui-2 cairo crypto dbus-1 dbus-glib-1 expat fontconfig
WANTLIB += freetype gailutil gc gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring
WANTLIB += gnomecanvas-2 gnomeui-2 gnomevfs-2 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png popt ssl util xml2 z

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::graphics/libgphoto2 \
			::sysutils/ndesk-dbus-glib \
			::x11/gnome/mono-gnome \
			::x11/gnome/screensaver
LIB_DEPENDS+=		exif::graphics/libexif \
			lcms::graphics/lcms \
			mono::lang/mono

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/f-spot \
			--disable-schemas-install \
			--disable-scrollkeeper \
			--disable-unit
CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

DLLMAP_FILES=	Tao/Tao.OpenGl.Glu/Tao.OpenGl.Glu.dll.config \
		Tao/Tao.OpenGl.ExtensionLoader/Tao.OpenGl.ExtensionLoader.dll.config \
		Tao/Tao.OpenGl/Tao.OpenGl.dll.config \
		libgphoto2-sharp/libgphoto2-sharp.dll.config \
		dbus-sharp-glib/NDesk.DBus.GLib.dll.config \
		src/FSpot.Utils.dll.config \
		src/f-spot.exe.config.in \
		src/Cms.dll.config.in \
		gio-sharp/gio/gio-sharp.dll.config.in \
		mono-addins/Mono.Addins/Mono.Addins.dll.config

.include <bsd.port.mk>
