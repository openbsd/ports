# $OpenBSD: Makefile,v 1.6 2019/07/12 20:48:43 sthen Exp $

COMMENT =		merge Buddy List with a conversation window in Pidgin
DISTNAME =		pidgin-window-merge-0.0.20130511
GH_ACCOUNT =		dm0-
GH_PROJECT =		window_merge
GH_COMMIT =		b4811ae1807a6c124fb06a717951bb2541be19f7
CATEGORIES =		net
REVISION =		2

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 cairo dbus-1 dbus-glib-1 expat ffi fontconfig
WANTLIB += freetype fribidi gadu gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz iconv idn intl lzma m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread purple
WANTLIB += xcb xcb-render xcb-shm xml2 z

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool \
			net/pidgin
LIB_DEPENDS =		net/pidgin,-libpurple \
			x11/gtk+2
RUN_DEPENDS =		net/pidgin

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION}
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

pre-configure:
	@mkdir ${WRKSRC}/m4
	@cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} autoreconf -fi

post-install:
	@rm ${PREFIX}/lib/pidgin/window_merge.a \
	    ${PREFIX}/lib/pidgin/window_merge.la

.include <bsd.port.mk>
