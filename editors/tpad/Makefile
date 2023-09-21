COMMENT =	simple, fast GTK-based text editor
DISTNAME =	tpad-5.7.1.3
CATEGORIES =	editors x11
REVISION =	12

HOMEPAGE =	https://launchpad.net/tpad-project/

# GPLv3+
PERMIT_PACKAGE =		Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender aspell
WANTLIB += atk-1.0 atk-bridge-2.0 c cairo cairo-gobject enchant-2
WANTLIB += epoxy execinfo expat ffi fontconfig freetype fribidi
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gtk-3 gtksourceview-3.0 gtkspell3-3 gucharmap_2_90
WANTLIB += harfbuzz iconv intl jpeg lzma m magic pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre2-8 pixman-1 png xcb xcb-render xcb-shm
WANTLIB += xml2 z

SITES =		https://launchpad.net/tpad-project/4.0/4.0/+download/

MODULES =	textproc/intltool

LIB_DEPENDS =	devel/libmagic \
		textproc/gtkspell3 \
		x11/gnome/gucharmap \
		x11/gtksourceview3

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-libunity
USE_GMAKE =		Yes
FAKE_FLAGS =		itlocaledir=${PREFIX}/share/locale \
			tpaddocdir=
# Upstream has given up on making their tests work.
NO_TEST =		Yes

post-patch:
	sed -i "s,Linux User's,OpenBSD Reference,g" ${WRKSRC}/man/tpad.1

.include <bsd.port.mk>
