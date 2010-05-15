# $OpenBSD: Makefile,v 1.29 2010/05/15 10:07:46 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		personal photo management application for GNOME

GNOME_VERSION=		0.6.2
GNOME_PROJECT=		f-spot

CATEGORIES=		graphics

SHARED_LIBS +=  gphoto2glue 0.0 # .0.0

HOMEPAGE=		http://www.f-spot.org/

# GPLv2
# gio-sharp: LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0 avahi-client avahi-common
WANTLIB += avahi-glib bonobo-2 bonobo-activation bonoboui-2 cairo
WANTLIB += crypto dbus-1 dbus-glib-1 eggdbus-1 expat fontconfig
WANTLIB += freetype gailutil gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring
WANTLIB += gnomecanvas-2 gnomeui-2 gnomevfs-2 gobject-2.0 gpg-error
WANTLIB += gthread-2.0 gtk-x11-2.0 jpeg ltdl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png popt pthread-stubs ssl
WANTLIB += usb util xcb xcb-render xcb-render-util xml2 z

MODULES=		devel/gettext \
			lang/mono \
			x11/gnome \
			devel/gconf2

USE_X11=		Yes

DESKTOP_FILES=		Yes
MODGNOME_HELP_FILES=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS} \
			::shells/bash \
			::x11/gnome/screensaver
RUN_DEPENDS=		::graphics/libgphoto2 \
			::x11/gnome/mono-gnome \
			::sysutils/ndesk-dbus-glib
LIB_DEPENDS+=		exif::graphics/libexif \
			lcms::graphics/lcms \
			gphoto2.>=3,gphoto2_port.>=6::graphics/libgphoto2

MODGCONF2_SCHEMAS_DIR=	f-spot

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-shave=no \
			--disable-static
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

DLLMAP_FILES=		lib/unique-sharp/unique/unique-sharp.dll.config \
			lib/gio-sharp/gio/gio-sharp.dll.config \
			lib/gtk-sharp-beans/gtk-sharp-beans.dll.config \
			lib/libgphoto2-sharp/libgphoto2-sharp.dll.config \
			src/Cms.dll.config \
			src/FSpot.Utils.dll.config \
			src/FSpot.Widgets.dll.config \
			src/f-spot.exe.config

FAKE_FLAGS=		schemadir=${PREFIX}/${SCHEMAS_INSTDIR}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/icon-theme-installer

.include <bsd.port.mk>
