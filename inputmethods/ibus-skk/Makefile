# $OpenBSD: Makefile,v 1.28 2021/11/18 10:11:29 ajacoutot Exp $

COMMENT =		japanese skk input engine for ibus

V =			1.4.3
DISTNAME =		ibus-skk-${V}
REVISION =		2

CATEGORIES =		inputmethods japanese

HOMEPAGE =		https://github.com/ueno/ibus-skk/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += c cairo cairo-gobject epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gee-0.8 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gtk-3 harfbuzz ibus-1.0
WANTLIB += iconv intl json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png skk xcb xcb-render xcb-shm
WANTLIB += xkbcommon z

MASTER_SITES =		https://github.com/ueno/ibus-skk/releases/download/ibus-skk-${V}/
EXTRACT_SUFX =		.tar.xz

MODULES =		textproc/intltool

BUILD_DEPENDS =	 lang/vala
LIB_DEPENDS =		inputmethods/ibus \
			inputmethods/libskk
RUN_DEPENDS =		devel/desktop-file-utils

USE_GMAKE =		Yes

CONFIGURE_STYLE =	 gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/preferences.vala

.include <bsd.port.mk>
