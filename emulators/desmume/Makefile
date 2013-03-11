# $OpenBSD: Makefile,v 1.7 2013/03/11 11:06:03 espie Exp $

COMMENT =	Nintendo DS emulator

DISTNAME =	desmume-0.9.7
REVISION =	3

CATEGORIES =	emulators

HOMEPAGE =	http://desmume.org/

MAINTAINER =	Anthony J. Bentley <anthony@cathet.us>

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += agg c m pthread stdc++ z GL GLU ICE SM X11 Xcomposite
WANTLIB += Xcursor Xdamage Xext Xfixes Xi Xinerama Xmu Xrandr Xrender
WANTLIB += Xt expat fontconfig freetype pixman-1 pthread-stubs
WANTLIB += xcb xcb-render xcb-shm png xml2 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 pangox-1.0 SDL
WANTLIB += glade-2.0 atk-1.0 cairo gdk-x11-2.0 gdkglext-x11-1.0 gtk-x11-2.0
WANTLIB += gtkglext-x11-1.0 pango-1.0 pangocairo-1.0 pangoft2-1.0 zzip

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=desmume/}

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	archivers/zziplib \
		devel/sdl \
		devel/libglade2 \
		graphics/agg \
		graphics/gdk-pixbuf2 \
		graphics/png \
		textproc/libxml \
		x11/gtkglext

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

MODULES =	devel/gettext \
		textproc/intltool

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
