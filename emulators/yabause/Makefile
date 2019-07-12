# $OpenBSD: Makefile,v 1.12 2019/07/12 20:46:10 sthen Exp $

COMMENT =	Sega Saturn emulator

DISTNAME =	yabause-0.9.10
REVISION =	6

CATEGORIES =	emulators games
HOMEPAGE =	http://yabause.org/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =  GL GLU ICE SDL SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm atk-1.0
WANTLIB += c cairo drm expat fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gdkglext-x11-1.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 gtkglext-x11-1.0 iconv
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pangox-1.0
WANTLIB += pixman-1 png pthread xcb xcb-render xcb-shm z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=yabause/}

USE_GMAKE =	Yes


CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS = --without-openal ac_cv_lib_glut_glutGetModifiers=no
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include"

LIB_DEPENDS =	devel/sdl \
		x11/gtkglext
RUN_DEPENDS =	devel/desktop-file-utils

.include <bsd.port.mk>
