# $OpenBSD: Makefile,v 1.25 2009/06/11 18:38:16 ajacoutot Exp $

COMMENT=		Unicode character map for the GNOME project

GNOME_PROJECT=		gucharmap
GNOME_VERSION=		2.24.3
PKGNAME=		${DISTNAME}p7
SHARED_LIBS +=	gucharmap            1.0      # .7.0

HOMEPAGE=		http://live.gnome.org/Gucharmap

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 \
		dbus-glib-1 expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png pthread z

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

USE_X11=		Yes
MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	gucharmap

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-scrollkeeper \
			--disable-python-bindings
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
