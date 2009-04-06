# $OpenBSD: Makefile,v 1.4 2009/04/06 10:05:21 ajacoutot Exp $

COMMENT=	advanced general purpose calculator

GNOME_PROJECT=	genius
GNOME_VERSION=	1.0.6
PKGNAME=	${DISTNAME}p0

HOMEPAGE=	http://www.jirka.org/genius.html

CATEGORIES=	math

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xft Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += c cairo crypto dbus-1 dbus-glib-1 expat fontconfig
WANTLIB += freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m ncurses pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pangox-1.0 pangoxft-1.0 pcre pixman-1 png pthread readline
WANTLIB += ssl termcap util xml2 z

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
