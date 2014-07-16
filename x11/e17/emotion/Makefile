# $OpenBSD: Makefile,v 1.16 2014/07/16 14:35:38 naddy Exp $

COMMENT =		video (and audio) codec playback library

DISTNAME =		emotion-1.7.9
REVISION =		1

SHARED_LIBS +=	emotion                   1.0 # 8.6

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xss Xtst c cares crypto curl ecore ecore_con
WANTLIB += ecore_evas ecore_file ecore_imf ecore_imf_evas ecore_input
WANTLIB += ecore_input_evas ecore_ipc ecore_x edje eet eina eio
WANTLIB += embryo evas expat ffi fontconfig freetype fribidi glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gstbase-0.10 gstinterfaces-0.10
WANTLIB += gstreamer-0.10 gstvideo-0.10 gthread-2.0 harfbuzz
WANTLIB += idn jpeg m pcre pthread pthread-stubs orc-0.4
WANTLIB += ssl xcb xml2 z ${MODLUA_WANTLIB}

MODULES =		devel/gettext \
			lang/lua \
			x11/e17

MODE17_PURGE_LA =	lib/edje/modules/emotion

LIB_DEPENDS =		devel/orc \
			multimedia/gstreamer-0.10/plugins-base \
			x11/e17/ecore>=1.7.9v2 \
			x11/e17/edje>=1.7.9v2 \
			x11/e17/embryo>=1.7.9v2

CONFIGURE_ARGS +=	--disable-doc \
			--disable-xine \
			--disable-generic-vlc

.include <bsd.port.mk>
