# $OpenBSD: Makefile,v 1.16 2010/10/25 15:16:30 giovanni Exp $

COMMENT =		GTK+2 file manager

DISTNAME =		emelfm2-0.7.3

CATEGORIES =		x11
HOMEPAGE =		http://emelfm2.net/

MAINTAINER =		Giovanni Bechis <giovanni@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${HOMEPAGE}rel/
EXTRACT_SUFX =	.tar.bz2

LIB_DEPENDS =	::x11/gtk+2 \
		::devel/atk \
		::devel/pango \
		::graphics/cairo \
		::graphics/png

MODULES =	devel/gettext

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender c expat fontconfig freetype
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m pixman-1 pthread pthread-stubs xcb xcb-render z
WANTLIB += GL Xxf86vm drm xcb-shm atk-1.0 cairo pango-1.0 png
WANTLIB += pangoft2-1.0 pangocairo-1.0 gdk-x11-2.0 
WANTLIB += gdk_pixbuf-2.0 gtk-x11-2.0

BUILD_DEPENDS =	::devel/libmagic
RUN_DEPENDS =	::devel/desktop-file-utils \
		::devel/xdg-utils

MAKE_ENV =	CC=${CC} lCFLAGS="${CFLAGS} -I${LOCALBASE}/include"
USE_GMAKE =	Yes
NO_REGRESS =	Yes

.include <bsd.port.mk>
