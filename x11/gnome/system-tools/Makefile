# $OpenBSD: Makefile,v 1.3 2010/09/30 07:38:53 ajacoutot Exp $

COMMENT=	sytem configuration GUI for desktops

GNOME_PROJECT=	gnome-system-tools
GNOME_VERSION=	2.32.0

CATEGORIES=	sysutils

HOMEPAGE=	http://projects.gnome.org/gst/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo crypto
WANTLIB += dbus-1 dbus-glib-1 expat fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 oobs-1
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-render-util z eggdbus-1 nautilus-extension
WANTLIB += polkit-gobject-1 polkit-gtk-1

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	::devel/liboobs \
		::x11/polkit-gnome \
		::x11/gnome/nautilus

USE_X11=	Yes
DESKTOP_FILES=	Yes

MODGNOME_HELP_FILES= Yes
MODGCONF2_SCHEMAS_DIR= gnome-system-tools

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-silent-rules \
		--disable-services
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/gnome-system-tools

.include <bsd.port.mk>
