# $OpenBSD: Makefile,v 1.22 2016/09/08 10:36:48 jasper Exp $

COMMENT =	japanese-english dictionary program

DISTNAME =	gwaei-3.2.0
REVISION =	14

SHARED_LIBS =	waei	0.0

CATEGORIES =	japanese

HOMEPAGE =	http://sourceforge.net/projects/gwaei/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=gwaei/}

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject crypto curl dbus-1 epoxy expat
WANTLIB += ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-3 harfbuzz iconv idn intl m nghttp2 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += ssl xcb xcb-render xcb-shm z

MODULES =	devel/dconf \
		textproc/intltool \
		x11/gnome

USE_GMAKE=	Yes

RUN_DEPENDS =	fonts/ja-kanjistrokeorders-ttf \
		textproc/docbook
LIB_DEPENDS =	devel/gettext \
		net/curl \
		x11/gtk+3

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS += ENCHANT="${LOCALBASE}/bin/enchant"

MODGNOME_TOOLS += desktop-file-utils gtk-update-icon-cache yelp

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/gwaei/help/C/*.{in,xml}

.include <bsd.port.mk>
