# $OpenBSD: Makefile,v 1.5 2013/02/24 14:44:25 sthen Exp $

COMMENT =	Sega Saturn emulator

DISTNAME =	yabause-0.9.10
REVISION =	1

CATEGORIES =	emulators games
HOMEPAGE =	http://yabause.org/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=yabause/}

USE_GMAKE =	Yes

MODULES = devel/gettext

WANTLIB += GL GLU ICE SDL SM X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xmu Xrandr Xrender Xt
WANTLIB += Xxf86vm atk-1.0 c cairo drm expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gdkglext-x11-1.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += gtkglext-x11-1.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pangox-1.0 pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm z

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS = --without-openal ac_cv_lib_glut_glutGetModifiers=no
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include"

LIB_DEPENDS =	devel/sdl \
		x11/gtkglext
RUN_DEPENDS =	devel/desktop-file-utils

.include <bsd.port.mk>
