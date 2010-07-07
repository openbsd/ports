# $OpenBSD: Makefile,v 1.40 2010/07/07 16:40:22 ajacoutot Exp $

COMMENT-main=	configuration database system for GNOME
COMMENT-polkit=	PolicyKit integration for GConf2

GNOME_PROJECT=	GConf
GNOME_VERSION=	2.28.1

PKGNAME-main=	gconf2-${GNOME_VERSION}p1
PKGNAME-polkit=	gconf2-polkit-${GNOME_VERSION}

SHARED_LIBS +=	gconf-2              6.2      # .5.5

CATEGORIES=	devel
CATEGORIES-polkit= devel sysutils

HOMEPAGE=	http://www.gnome.org/projects/gconf/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

WANTLIB += c dbus-1 dbus-glib-1 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 pcre pthread z

WANTLIB-main += ${WANTLIB}
WANTLIB-main += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB-main += Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 expat
WANTLIB-main += fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB-main += gobject-2.0 gthread-2.0 m pango-1.0 pangocairo-1.0
WANTLIB-main += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB-main += xcb xcb-render xcb-render-util z

WANTLIB-polkit += ${WANTLIB}
WANTLIB-polkit += ORBit-2 c dbus-1 dbus-glib-1 eggdbus-1 gio-2.0 glib-2.0
WANTLIB-polkit += gmodule-2.0 gobject-2.0 gthread-2.0 pcre pthread z

MODULES=	devel/gettext \
		x11/gnome

MULTI_PACKAGES=	-main -polkit

LIB_DEPENDS-main= ${LIB_DEPENDS} \
		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		ORBit-2.>=2.0::devel/ORBit2 \
		xml2.>=9::textproc/libxml \
		dbus-glib-1::x11/dbus-glib

LIB_DEPENDS-polkit= ${LIB_DEPENDS} \
		gconf-2.>=6::devel/gconf2 \
		polkit-gobject-1::sysutils/polkit

USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV= 	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		--without-openldap \
		--enable-defaults-service

FAKE_FLAGS=	sysgconfdir=${PREFIX}/share/examples/gconf2 \
		sysconfdir=${PREFIX}/share/examples/gconf2

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/schemas/

.include <bsd.port.mk>
