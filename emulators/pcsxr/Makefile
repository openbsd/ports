# $OpenBSD: Makefile,v 1.13 2015/05/05 17:00:17 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	Playstation 1 emulator

DISTNAME =	pcsxr-1.9.94.r87113p0
PKGNAME =	pcsxr-1.9.94beta0
REVISION =	2
CATEGORIES =	emulators games
HOMEPAGE =	http://pcsxr.codeplex.com/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL ICE SDL SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xtst Xv Xxf86vm
WANTLIB += atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject cdio
WANTLIB += dbus-1 drm epoxy expat ffi fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs sndio stdc++ usbhid xcb xcb-dri2 xcb-glx
WANTLIB += xcb-render xcb-shm z

MASTER_SITES =	http://www.elsasser.org/openbsd/distfiles/

USE_GMAKE =	Yes

MODULES =	devel/gettext textproc/intltool

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
	find ${WRKINST} -name '*.la' -print0 | xargs -0 rm

.include <bsd.port.mk>
