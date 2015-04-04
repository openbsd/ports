# $OpenBSD: Makefile,v 1.17 2015/04/04 09:21:01 ajacoutot Exp $

COMMENT =	japanese skk input engine for ibus

V =		1.4.2
DISTNAME =	ibus-skk-${V}
REVISION =	0

CATEGORIES =	inputmethods japanese

HOMEPAGE =	https://github.com/ueno/ibus-skk/

MAINTAINER =	Federico G. Schwindt <fgsch@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/ueno/ibus-skk/releases/download/ibus-skk-${V}/

WANTLIB =	ICE SM X11 Xcomposite Xcursor Xdamage graphite2 \
		Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 \
		atk-bridge-2.0 atspi c cairo cairo-gobject dbus-1 \
		expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0 \
		gee-0.8 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
		gtk-3 harfbuzz ibus-1.0 json-glib-1.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png pthread pthread-stubs skk xcb xcb-render \
		xcb-shm z

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
