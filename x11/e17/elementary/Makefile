# $OpenBSD: Makefile,v 1.36 2019/09/07 13:16:47 naddy Exp $

BROKEN-i386 =		segfault during build since switch to clang

COMMENT =		basic widget set, based on EFL

VERSION =		1.7.10
DISTNAME =		elementary-${VERSION}
REVISION =		15

SHARED_LIBS +=	elementary                1.0 # 8.10

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB =  ${MODLUA_WANTLIB}
WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xss Xtst c cares crypto curl dbus-1 ecore ecore_con
WANTLIB += ecore_evas ecore_file ecore_imf ecore_imf_evas ecore_input
WANTLIB += ecore_input_evas ecore_ipc ecore_x edbus edje eet efreet
WANTLIB += efreet_mime efreet_trash eina eio embryo emotion ethumb
WANTLIB += ethumb_client evas exif expat fontconfig freetype fribidi
WANTLIB += glib-2.0 graphite2 harfbuzz iconv intl jpeg m nghttp2 pcre
WANTLIB += pthread ssl xcb z

MODULES =		lang/lua \
			x11/e17

MODE17_DESKTOP_FILE =	Yes
MODE17_PURGE_LA =	lib/edje/modules lib/elementary/modules

USE_GMAKE =		Yes

LIB_DEPENDS +=		x11/e17/e_dbus>=1.7.10v1 \
			x11/e17/edje>=1.7.10v2 \
			x11/e17/eet>=1.7.10v2 \
			x11/e17/efreet>=1.7.10v2 \
			x11/e17/eio>=1.7.10 \
			x11/e17/emotion>=1.7.10 \
			x11/e17/ethumb>=1.7.10 \
			${MODLUA_LIB_DEPENDS}

CONFIGURE_ARGS +=	--disable-doc

.include <bsd.port.mk>
