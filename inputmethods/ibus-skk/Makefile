# $OpenBSD: Makefile,v 1.24 2019/07/12 20:47:13 sthen Exp $

COMMENT =	japanese skk input engine for ibus

V =		1.4.2
DISTNAME =	ibus-skk-${V}
REVISION =	6

CATEGORIES =	inputmethods japanese

HOMEPAGE =	https://github.com/ueno/ibus-skk/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi c cairo
WANTLIB += cairo-gobject dbus-1 epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gee-0.8 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz
WANTLIB += ibus-1.0 iconv intl json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread skk xcb xcb-render
WANTLIB += xcb-shm z

MASTER_SITES =	https://github.com/ueno/ibus-skk/releases/download/ibus-skk-${V}/

MODULES =	textproc/intltool

BUILD_DEPENDS = lang/vala
LIB_DEPENDS =	inputmethods/ibus \
		inputmethods/libskk>=1.0.2
RUN_DEPENDS =	devel/desktop-file-utils

USE_GMAKE =	Yes

CONFIGURE_STYLE = gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/preferences.vala

.include <bsd.port.mk>
