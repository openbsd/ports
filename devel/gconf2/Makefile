# $OpenBSD: Makefile,v 1.33 2009/06/07 01:28:38 ajacoutot Exp $

COMMENT=	configuration database system for GNOME

GNOME_PROJECT=	GConf
GNOME_VERSION=	2.24.0
PKGNAME=	gconf2-${GNOME_VERSION}p0
SHARED_LIBS +=	gconf-2              6.2      # .5.5
CATEGORIES=	devel

HOMEPAGE=	http://www.gnome.org/projects/gconf/

# LGPLv2
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 expat \
		fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0 \
		gobject-2.0 gthread-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png pthread z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		ORBit-2.>=2.0::devel/ORBit2 \
		xml2.>=9::textproc/libxml \
		dbus-glib-1::x11/dbus-glib

USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV= 	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

FAKE_FLAGS=	sysgconfdir=${PREFIX}/share/examples/gconf2

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/schemas/

.include <bsd.port.mk>
