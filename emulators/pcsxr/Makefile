# $OpenBSD: Makefile,v 1.25 2020/03/20 16:44:23 naddy Exp $

COMMENT =	Playstation 1 emulator

DISTNAME =	pcsxr-1.9.94.r87113p0
PKGNAME =	pcsxr-1.9.94beta0
REVISION =	9
CATEGORIES =	emulators games
HOMEPAGE =	http://pcsxr.codeplex.com/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += GL SDL X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xtst Xv Xxf86vm
WANTLIB += atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject cdio
WANTLIB += dbus-1 drm epoxy expat ffi fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += sndio ${COMPILER_LIBCXX} usbhid xcb xcb-dri2 xcb-glx
WANTLIB += xcb-render xcb-shm z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	http://www.elsasser.org/openbsd/distfiles/

USE_GMAKE =	Yes

MODULES =	textproc/intltool

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.69
CONFIGURE_ENV =		CPPFLAGS="-I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib"
CONFIGURE_ARGS =	--enable-libcdio --enable-opengl --enable-dynarec=no
LIBTOOL_FLAGS =		--tag=disable-static

LIB_DEPENDS =	audio/libcdio \
		x11/gtk+3 \
		devel/sdl
RUN_DEPENDS =	devel/desktop-file-utils

NO_TEST =	Yes

post-install:
	find ${WRKINST} -name '*.la' -delete

.include <bsd.port.mk>
