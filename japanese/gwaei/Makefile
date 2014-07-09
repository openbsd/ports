# $OpenBSD: Makefile,v 1.16 2014/07/09 17:43:52 ajacoutot Exp $

COMMENT =	japanese-english dictionary program

DISTNAME =	gwaei-3.2.0
REVISION =	8

SHARED_LIBS =	waei	0.0

CATEGORIES =	japanese

HOMEPAGE =	http://sourceforge.net/projects/gwaei/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi \
		Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi \
		c cairo cairo-gobject crypto curl dbus-1 expat ffi \
		fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gthread-2.0 gtk-3 harfbuzz \
		idn m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs \
		ssl xcb xcb-render xcb-shm z graphite2

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=gwaei/}

MODULES =	devel/dconf \
		devel/gettext \
		textproc/intltool \
		x11/gnome

USE_GMAKE=	Yes

RUN_DEPENDS =	fonts/ja-kanjistrokeorders-ttf \
		textproc/docbook
LIB_DEPENDS =	net/curl \
		x11/gtk+3

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS += ENCHANT="${LOCALBASE}/bin/enchant"

MODGNOME_TOOLS += desktop-file-utils gtk-update-icon-cache yelp

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/gwaei/help/C/*.{in,xml}

.include <bsd.port.mk>
