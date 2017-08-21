# $OpenBSD: Makefile,v 1.6 2017/08/21 22:45:51 juanfra Exp $

COMMENT =		Dragon and CoCo emulator

DISTNAME =		xroar-0.34.8

CATEGORIES =		emulators

HOMEPAGE =		http://www.6809.org.uk/xroar/

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU ICE SDL2 SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xmu Xt Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdkglext-x11-1.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-x11-2.0 gtkglext-x11-1.0 intl m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pangox-1.0 pthread sndfile z

MASTER_SITES =		http://www.6809.org.uk/xroar/dl/

COMPILER =		gcc
COMPILER_LANGS =	c

LIB_DEPENDS =		audio/libsndfile \
			devel/sdl2 \
			x11/gtk+2 \
			x11/gtkglext

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-gtk2 \
			--with-gtkgl \
			--with-sdl2 \
			--without-pulse
CONFIGURE_ENV =		GL_LIBS="-L${X11BASE}/lib"

NO_TEST =		Yes

.include <bsd.port.mk>
