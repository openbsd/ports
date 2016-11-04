# $OpenBSD: Makefile,v 1.11 2016/11/04 11:35:21 sthen Exp $

COMMENT =		EFL thumbnail generation library

DISTNAME =		ethumb-1.7.10
REVISION =		2

SHARED_LIBS +=	ethumb                    1.0 # 8.10
SHARED_LIBS +=	ethumb_client             1.0 # 8.10

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODLUA_WANTLIB}
WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xss Xtst c cares crypto curl dbus-1 ecore ecore_con
WANTLIB += ecore_evas ecore_file ecore_imf ecore_imf_evas ecore_input
WANTLIB += ecore_input_evas ecore_ipc ecore_x edbus edje eet eina eio
WANTLIB += embryo emotion evas exif expat fontconfig freetype fribidi
WANTLIB += glib-2.0 graphite2 harfbuzz jpeg m nghttp2 pcre pthread
WANTLIB += pthread-stubs ssl xcb z

MODULES =		devel/gettext \
			lang/lua

LIB_DEPENDS =		graphics/libexif \
			x11/e17/ecore>=1.7.10v2 \
			x11/e17/e_dbus>=1.7.10v1 \
			x11/e17/edje>=1.7.10v2 \
			x11/e17/eet>=1.7.10v2 \
			x11/e17/emotion>=1.7.10

CONFIGURE_ARGS +=	--disable-doc

.include <bsd.port.mk>
