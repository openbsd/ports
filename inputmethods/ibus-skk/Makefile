# $OpenBSD: Makefile,v 1.25 2020/04/20 10:15:56 ajacoutot Exp $

COMMENT =		japanese skk input engine for ibus

V =			1.4.3
DISTNAME =		ibus-skk-${V}

CATEGORIES =		inputmethods japanese

HOMEPAGE =		https://github.com/ueno/ibus-skk/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 c cairo cairo-gobject
WANTLIB += epoxy expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gee-0.8 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gtk-3 harfbuzz ibus-1.0 iconv intl json-glib-1.0 m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread skk xcb xcb-render xcb-shm z

MASTER_SITES =		https://github.com/ueno/ibus-skk/releases/download/ibus-skk-${V}/
EXTRACT_SUFX =		.tar.xz

MODULES =		textproc/intltool

BUILD_DEPENDS =	 lang/vala
LIB_DEPENDS =		inputmethods/ibus \
			inputmethods/libskk>=1.0.2
RUN_DEPENDS =		devel/desktop-file-utils

USE_GMAKE =		Yes

CONFIGURE_STYLE =	 gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/preferences.vala

.include <bsd.port.mk>
