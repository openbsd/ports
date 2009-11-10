# $OpenBSD: Makefile,v 1.8 2009/11/10 08:09:37 ajacoutot Exp $

COMMENT=	advanced general purpose calculator

GNOME_PROJECT=	genius
GNOME_VERSION=	1.0.8

HOMEPAGE=	http://www.jirka.org/genius.html

CATEGORIES=	math

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += c cairo crypto dbus-1 dbus-glib-1 expat fontconfig
WANTLIB += freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m ncurses pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread readline pthread-stubs xcb
WANTLIB += ssl termcap util xml2 z avahi-client avahi-common avahi-glib

MODULES=	devel/gettext \
		x11/gnome

RUN_DEPENDS=	:shared-mime-info->=0.21:misc/shared-mime-info
LIB_DEPENDS=	gtksourceview-2.0.>=2::x11/gtksourceview \
		gnomevfs-2.>=2400::x11/gnome/vfs2 \
		gmp.>=7::devel/gmp \
		mpfr::devel/mpfr \
		vte.>=12::devel/vte

MODGNOME_HELP_FILES= Yes
DESKTOP_FILES=	Yes
USE_X11=	Yes

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lgmp"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-scrollkeeper \
		--disable-update-mimedb \
		--disable-extra-gcc-optimization

.include <bsd.port.mk>
