# $OpenBSD: Makefile,v 1.1.1.1 2009/06/05 22:13:25 jasper Exp $

COMMENT=		C++ Application Framework for use with Gtkmm

GNOME_PROJECT=		bakery
GNOME_VERSION=		2.6.3
SHARED_LIBS +=  bakery-2.6           0.0      # .1.0
CATEGORIES=		devel x11/gnome

API_VERSION=		2.6

HOMEPAGE=		http://bakery.sf.net/

# LPGLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atkmm-1.6
WANTLIB += cairo cairomm-1.0 dbus-1 dbus-glib-1 expat fontconfig
WANTLIB += freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gdkmm-2.4
WANTLIB += gio-2.0 giomm-2.4 glade-2.0 glib-2.0 glibmm-2.4 glitz
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 gtkmm-2.4
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pangomm-1.4
WANTLIB += pcre pixman-1 png sigc-2.0 xml2 z

LIB_DEPENDS=		gconfmm-2.6::devel/gconfmm \
			glademm-2.4::devel/libglademm \
			xml++-2.6::textproc/libxml++

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS+=		API_VERSION

.include <bsd.port.mk>
