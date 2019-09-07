# $OpenBSD: Makefile,v 1.15 2019/09/07 13:16:47 naddy Exp $

COMMENT =		EFL thumbnail generation library

DISTNAME =		ethumb-1.7.10
REVISION =		5

SHARED_LIBS +=	ethumb                    1.0 # 8.10
SHARED_LIBS +=	ethumb_client             1.0 # 8.10

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB =  ${MODLUA_WANTLIB}
WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xss Xtst c cares crypto curl dbus-1 ecore ecore_con
WANTLIB += ecore_evas ecore_file ecore_imf ecore_imf_evas ecore_input
WANTLIB += ecore_input_evas ecore_ipc ecore_x edbus edje eet eina eio
WANTLIB += embryo emotion evas exif expat fontconfig freetype fribidi
WANTLIB += glib-2.0 graphite2 harfbuzz iconv intl jpeg m nghttp2 pcre
WANTLIB += pthread ssl xcb z

MODULES =		lang/lua

LIB_DEPENDS =		graphics/libexif \
			x11/e17/ecore>=1.7.10v2 \
			x11/e17/e_dbus>=1.7.10v1 \
			x11/e17/edje>=1.7.10v2 \
			x11/e17/eet>=1.7.10v2 \
			x11/e17/emotion>=1.7.10

CONFIGURE_ARGS +=	--disable-doc

.include <bsd.port.mk>
