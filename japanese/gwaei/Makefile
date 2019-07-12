# $OpenBSD: Makefile,v 1.30 2019/07/12 20:47:14 sthen Exp $

COMMENT =	japanese-english dictionary program

DISTNAME =	gwaei-3.2.0
REVISION =	21

SHARED_LIBS =	waei	0.0

CATEGORIES =	japanese

HOMEPAGE =	http://sourceforge.net/projects/gwaei/

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi c cairo
WANTLIB += cairo-gobject crypto curl dbus-1 epoxy expat ffi fontconfig
WANTLIB += freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz
WANTLIB += iconv intl m nghttp2 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread ssl xcb xcb-render xcb-shm z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=gwaei/}

MODULES =	devel/dconf \
		textproc/intltool \
		x11/gnome

USE_GMAKE=	Yes

RUN_DEPENDS =	fonts/ja-kanjistrokeorders-ttf \
		textproc/docbook
LIB_DEPENDS =	devel/gettext,-runtime \
		net/curl \
		x11/gtk+3

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS += ENCHANT="${LOCALBASE}/bin/enchant"

MODGNOME_TOOLS += desktop-file-utils gtk-update-icon-cache yelp

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/gwaei/help/C/*.{in,xml}

.include <bsd.port.mk>
