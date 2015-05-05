# $OpenBSD: Makefile,v 1.18 2015/05/05 17:00:18 sthen Exp $

COMMENT =	japanese skk input engine for ibus

V =		1.4.2
DISTNAME =	ibus-skk-${V}
REVISION =	1

CATEGORIES =	inputmethods japanese

HOMEPAGE =	https://github.com/ueno/ibus-skk/

MAINTAINER =	Federico G. Schwindt <fgsch@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi c cairo
WANTLIB += cairo-gobject dbus-1 epoxy expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gee-0.8 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz ibus-1.0
WANTLIB += json-glib-1.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs skk xcb xcb-render xcb-shm
WANTLIB += z

MASTER_SITES =	https://github.com/ueno/ibus-skk/releases/download/ibus-skk-${V}/

MODULES =	devel/gettext \
		textproc/intltool

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
