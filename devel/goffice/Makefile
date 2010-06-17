# $OpenBSD: Makefile,v 1.22 2010/06/17 07:05:41 ajacoutot Exp $

# XXX on goffice version change,
# update API_VERSION in math/gnumeric and bump PKGNAME

SHARED_ONLY=	Yes

COMMENT=	document centric objects and utilities

GNOME_PROJECT=	goffice
GNOME_VERSION=	0.8.6

SHARED_LIBS +=	goffice-0.8          0.0      # .8.0
CATEGORIES=	devel

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 bz2 cairo
WANTLIB += dbus-1 dbus-glib-1 expat fontconfig freetype gconf-2
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs xcb xml2
WANTLIB += z xcb-render xcb-render-util

MODULES=		devel/gettext \
			x11/gnome

USE_X11=		Yes

LIB_DEPENDS=		gsf-1.>=114::devel/libgsf \
			gconf-2.>=6::devel/gconf2

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-gtk-doc=no

SUBST_VARS=		GNOME_VERSION

.include <bsd.port.mk>
