# $OpenBSD: Makefile,v 1.7 2013/12/06 13:16:45 dlg Exp $

COMMENT =		EFL thumbnail generation library

DISTNAME =		ethumb-1.7.9

SHARED_LIBS +=	ethumb                    0.0 # 8.6
SHARED_LIBS +=	ethumb_client             0.0 # 8.6

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xss Xtst c cares crypto curl dbus-1
WANTLIB += ecore ecore_con ecore_evas ecore_file ecore_imf ecore_imf_evas
WANTLIB += ecore_input ecore_input_evas ecore_ipc ecore_x edbus
WANTLIB += edje eet eina eio embryo emotion evas exif expat
WANTLIB += fontconfig freetype fribidi glib-2.0 graphite2
WANTLIB += harfbuzz idn jpeg m pcre pthread
WANTLIB += pthread-stubs ssl xcb z ${MODLUA_WANTLIB}

MODULES =		devel/gettext \
			lang/lua

LIB_DEPENDS =		graphics/libexif \
			x11/e17/ecore>=1.7.9v2 \
			x11/e17/e_dbus>=1.7.9v1 \
			x11/e17/edje>=1.7.9v2 \
			x11/e17/eet>=1.7.9v2 \
			x11/e17/emotion>=1.7.9

CONFIGURE_ARGS +=	--disable-doc

.include <bsd.port.mk>
