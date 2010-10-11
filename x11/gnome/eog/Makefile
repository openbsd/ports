# $OpenBSD: Makefile,v 1.56 2010/10/11 08:19:19 jasper Exp $

COMMENT=		Eye of GNOME, image viewing and cataloging program

GNOME_PROJECT=		eog
GNOME_VERSION=		2.32.0
REVISION=		0

CATEGORIES=		graphics

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp exif
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo lcms
WANTLIB += dbus-1 dbus-glib-1 execinfo expat ffi fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 jpeg m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs startup-notification-1 util xcb xcb-atom
WANTLIB += xcb-aux xcb-event xcb-render xcb-render-util
WANTLIB += xcb-render xcb-render-util xml2 z gnome-desktop-2
WANTLIB += rsvg-2 gsf-1 bz2 croco-0.6

MODULES=		devel/gconf2 \
			devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}
LIB_DEPENDS=		${MODPY_LIB_DEPENDS} \
			::x11/gnome/desktop \
			::graphics/libexif \
			::graphics/lcms \
			::x11/gnome/librsvg \
			::devel/libgsf
RUN_DEPENDS=		:shared-mime-info->=0.21:misc/shared-mime-info \
			:gnome-icon-theme->=2.18.0:x11/gnome/icon-theme

MODGNOME_HELP_FILES=	Yes
USE_X11=		Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	eog

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=	--enable-python \
			--without-xmp \
			--with-libexif

.include <bsd.port.mk>
