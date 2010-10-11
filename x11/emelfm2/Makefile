# $OpenBSD: Makefile,v 1.13 2010/10/11 08:19:58 jasper Exp $

COMMENT =		GTK+2 file manager

DISTNAME =		emelfm2-0.7.2
REVISION=		0

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

LIB_DEPENDS =	::x11/gtk+2

MODULES =	devel/gettext

WANTLIB =	c cairo glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
		X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 expat fontconfig \
		freetype gio-2.0 pixman-1 png xcb pangoft2-1.0 \
		m pthread pthread-stubs z pango-1.0 pangocairo-1.0 \
		xcb-render xcb-render-util gdk_pixbuf-2.0 gdk-x11-2.0 \
		gtk-x11-2.0

BUILD_DEPENDS =	::devel/libmagic
RUN_DEPENDS =	::devel/desktop-file-utils \
		::devel/xdg-utils

MAKE_ENV =	CC=${CC} lCFLAGS="${CFLAGS} -I${LOCALBASE}/include"
USE_X11 =	Yes
USE_GMAKE =	Yes
NO_REGRESS =	Yes

.include <bsd.port.mk>
