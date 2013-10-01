# $OpenBSD: Makefile,v 1.7 2013/10/01 09:07:14 ajacoutot Exp $

SHARED_ONLY =	Yes

COMMENT =	Playstation 1 emulator

DISTNAME =	pcsxr-1.9.92
REVISION =	1

CATEGORIES =	emulators games
HOMEPAGE =	http://pcsxr.codeplex.com/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://distfiles.bsdfrog.org/
EXTRACT_SUFX =	.tar.bz2

USE_GMAKE =	Yes

MODULES =	devel/gettext

WANTLIB += GL SDL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xtst Xv Xxf86vm atk-1.0
WANTLIB += c cairo cdio drm expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glade-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += sndio usbhid xcb xcb-render xcb-shm xml2 z

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CFLAGS="-I/usr/X11R6/include/"
CONFIGURE_ARGS =	--enable-libcdio --enable-opengl

LIB_DEPENDS =	audio/libcdio \
		devel/libglade2 \
		devel/sdl
RUN_DEPENDS =	devel/desktop-file-utils

.include <bsd.port.mk>
