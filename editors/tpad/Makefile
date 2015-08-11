# $OpenBSD: Makefile,v 1.9 2015/08/11 21:43:03 jasper Exp $

COMMENT =	simple, fast GTK-based text editor
DISTNAME =	tpad-5.7.1.3
CATEGORIES =	editors x11
REVISION =	1

HOMEPAGE =	https://launchpad.net/tpad-project/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi c cairo
WANTLIB += cairo-gobject dbus-1 enchant epoxy expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 gtksourceview-3.0
WANTLIB += gtkspell3-3 gucharmap_2_90 harfbuzz lzma m magic pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs stdc++ xcb xcb-render xcb-shm xml2 z

MASTER_SITES =	https://launchpad.net/tpad-project/4.0/4.0/+download/

MODULES =	devel/gettext \
		textproc/intltool

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
