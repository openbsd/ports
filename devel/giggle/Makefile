# $OpenBSD: Makefile,v 1.7 2010/04/22 15:01:52 landry Exp $

COMMENT=	gtk-based git repository viewer
CATEGORIES=	devel x11
GNOME_VERSION=	0.5
GNOME_PROJECT=	giggle

SHARED_LIBS+=	giggle		0.0 \
		giggle-git	0.0 # .0.0

HOMEPAGE=	http://live.gnome.org/giggle

MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/gnome \
		devel/gettext

DESKTOP_FILES=	Yes
USE_X11=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-evolution-data-server

RUN_DEPENDS=	::devel/git
BUILD_DEPENDS+=	::devel/git

LIB_DEPENDS=	vte::devel/vte \
		gtksourceview-2.0.>=0::x11/gtksourceview

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png pthread-stubs xcb xml2 z \
		gthread-2.0 ncurses pthread xcb-render xcb-render-util

.include <bsd.port.mk>
