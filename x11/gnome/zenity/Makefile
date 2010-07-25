# $OpenBSD: Makefile,v 1.37 2010/07/25 08:15:33 ajacoutot Exp $

COMMENT=		dialogs for GNOME

GNOME_PROJECT=		zenity
GNOME_VERSION=		2.30.0
REVISION=		1

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 expat
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs xcb xcb-render xcb-render-util z
WANTLIB += gthread-2.0 notify dbus-glib-1

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		::devel/libnotify \
			::x11/dbus-glib \

MODGNOME_HELP_FILES=	Yes
USE_X11=		Yes
USE_LIBTOOL=		No
CONFIGURE_ARGS= 	--enable-libnotify
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
