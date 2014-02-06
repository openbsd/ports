# $OpenBSD: Makefile,v 1.8 2014/02/06 03:10:48 jeremy Exp $

SHARED_ONLY =	Yes

COMMENT =	Playstation 1 emulator

DISTNAME =	pcsxr-1.9.94.r87113
PKGNAME =	pcsxr-1.9.94beta0

CATEGORIES =	emulators games
HOMEPAGE =	http://pcsxr.codeplex.com/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://deftly.net/
EXTRACT_SUFX =	.tar.bz2

USE_GMAKE =	Yes

MODULES =	devel/gettext textproc/intltool

WANTLIB += GL ICE SDL2 SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xtst Xv
WANTLIB += Xxf86vm atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += cdio dbus-1 drm expat ffi fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += sndio stdc++ usbhid xcb xcb-dri2 xcb-glx xcb-render
WANTLIB += xcb-shm z

BUILD_DEPENDS =		devel/autoconf/2.69 \
			devel/automake/1.14

CONFIGURE_STYLE =	gnu
CONFIGURE_SCRIPT =	autogen.sh
CONFIGURE_ENV =		CPPFLAGS="-I/usr/X11R6/include/" \
			LDFLAGS="-L/usr/X11R6/lib" \
			AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION}
CONFIGURE_ARGS =	--enable-libcdio --enable-opengl --enable-dynarec=no
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.14
LIBTOOL_FLAGS =		--tag=disable-static

LIB_DEPENDS =	audio/libcdio \
		x11/gtk+3 \
		devel/sdl2
RUN_DEPENDS =	devel/desktop-file-utils

post-install:
	find ${WRKINST} -name '*.la' -print0 | xargs -0 rm

NO_TEST =	Yes

.include <bsd.port.mk>
