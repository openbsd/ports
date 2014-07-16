# $OpenBSD: Makefile,v 1.16 2014/07/16 14:35:38 naddy Exp $

COMMENT =		basic widget set, based on EFL

VERSION =		1.7.9
DISTNAME =		elementary-${VERSION}
REVISION = 		2

SHARED_LIBS +=	elementary                0.0 # 8.6

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xss Xtst c cares crypto curl dbus-1
WANTLIB += ecore ecore_con ecore_evas ecore_file ecore_imf ecore_imf_evas
WANTLIB += ecore_input ecore_input_evas ecore_ipc ecore_x edbus
WANTLIB += edje eet efreet efreet_mime efreet_trash eina eio embryo
WANTLIB += emotion ethumb ethumb_client evas exif expat fontconfig
WANTLIB += freetype fribidi glib-2.0 graphite2 harfbuzz
WANTLIB += idn jpeg m pcre pthread pthread-stubs
WANTLIB += ssl xcb z ${MODLUA_WANTLIB}

MODULES =		devel/gettext \
			lang/lua \
			x11/e17

MODE17_DESKTOP_FILE =	Yes
MODE17_PURGE_LA =	lib/edje/modules lib/elementary/modules

USE_GMAKE =		Yes

LIB_DEPENDS +=		x11/e17/e_dbus>=1.7.9v1 \
			x11/e17/edje>=1.7.9v2 \
			x11/e17/eet>=1.7.9v2 \
			x11/e17/efreet>=1.7.9v2 \
			x11/e17/eio>=1.7.9 \
			x11/e17/emotion>=1.7.9 \
			x11/e17/ethumb>=1.7.9 \
			${MODLUA_LIB_DEPENDS}

CONFIGURE_ARGS +=	--disable-doc

.include <bsd.port.mk>
