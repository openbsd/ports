# $OpenBSD: Makefile,v 1.6 2013/02/03 12:09:27 rpe Exp $

COMMENT =		basic widget set, based on EFL

VERSION =		1.7.5
DISTNAME =		elementary-${VERSION}
REVISION =		1

SHARED_LIBS +=  elementary                0.0 # 8.5

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xss Xtst c cares crypto curl dbus-1
WANTLIB += ecore ecore_con ecore_evas ecore_file ecore_imf ecore_imf_evas
WANTLIB += ecore_input ecore_input_evas ecore_ipc ecore_x edbus
WANTLIB += edje eet efreet efreet_mime efreet_trash eina eio embryo
WANTLIB += emotion ethumb ethumb_client evas exif expat ffi fontconfig
WANTLIB += freetype fribidi glib-2.0 gobject-2.0 gthread-2.0 harfbuzz
WANTLIB += icudata icule icuuc idn jpeg m pcre pthread ssl xcb z
WANTLIB += ${MODLUA_WANTLIB}

MODULES =		devel/gettext \
			lang/lua \
			x11/e17

MODE17_DESKTOP_FILE =	Yes
MODE17_ICON_CACHE =	Yes
MODE17_PURGE_LA =	lib/edje/modules lib/elementary/modules

USE_GMAKE =		Yes
USE_LIBTOOL =		Yes

LIB_DEPENDS +=		x11/e17/e_dbus>=1.7.5v1 \
			x11/e17/edje>=1.7.5v2 \
			x11/e17/eet>=1.7.5v2 \
			x11/e17/efreet>=1.7.5v2 \
			x11/e17/eio>=1.7.5 \
			x11/e17/emotion>=1.7.5 \
			x11/e17/ethumb>=1.7.5 \
			${MODLUA_LIB_DEPENDS}

CONFIGURE_ARGS +=	--disable-doc

.include <bsd.port.mk>
