# $OpenBSD: Makefile,v 1.15 2013/08/07 21:57:56 naddy Exp $

COMMENT =	japanese skk input engine for ibus

DISTNAME =	ibus-skk-1.4.1
REVISION =	2

CATEGORIES =	inputmethods japanese

HOMEPAGE =	https://github.com/ueno/ibus-skk/

MAINTAINER =	Federico G. Schwindt <fgsch@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://cloud.github.com/downloads/ueno/ibus-skk/

WANTLIB =	GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 \
		atk-bridge-2.0 atspi c cairo cairo-gobject dbus-1 drm \
		expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0 \
		gee gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
		gtk-3 harfbuzz ibus-1.0 json-glib-1.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png pthread pthread-stubs skk stdc++ xcb xcb-render \
		xcb-shm z

MODULES =	devel/gettext \
		textproc/intltool

BUILD_DEPENDS = lang/vala
LIB_DEPENDS =	inputmethods/ibus \
		inputmethods/libskk

USE_GMAKE =	Yes

CONFIGURE_STYLE = gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/preferences.vala

.include <bsd.port.mk>
