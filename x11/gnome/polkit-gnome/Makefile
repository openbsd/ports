# $OpenBSD: Makefile,v 1.1.1.1 2010/07/01 07:55:42 ajacoutot Exp $

COMMENT=	PolicyKit integration for GNOME

GNOME_PROJECT=	polkit-gnome
GNOME_VERSION=	0.96

CATEGORIES=	sysutils

EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=  polkit-gtk-1              0.0 # 0.0

HOMEPAGE=	http://hal.freedesktop.org/docs/PolicyKit-gnome/

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 dbus-glib-1
WANTLIB += eggdbus-1 expat fontconfig freetype gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gobject-2.0 gthread-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs xcb xcb-render xcb-render-util z

MASTER_SITES=	http://hal.freedesktop.org/releases/

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	polkit-agent-1,polkit-gobject-1::sysutils/polkit \
		gdk-x11-2.0.>=1403,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--localstatedir=/var \
		--disable-introspection \
		--disable-gtk-doc

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/polkit-gnome

.include <bsd.port.mk>
