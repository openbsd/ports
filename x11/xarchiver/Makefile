# $OpenBSD: Makefile,v 1.17 2013/08/11 21:21:17 landry Exp $

COMMENT =	simple archive manager
CATEGORIES =	x11 archivers
REVISION=	11
DISTNAME =	xarchiver-0.5.2

MAINTAINER =	Landry Breuil <landry@openbsd.org>
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=xarchiver/}
EXTRACT_SUFX =	.tar.bz2
HOMEPAGE =	http://xarchiver.sourceforge.net

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	devel/gettext
USE_GMAKE =	Yes

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS =	x11/gtk+2
RUN_DEPENDS =	archivers/zip \
		archivers/unzip \
		devel/xdg-utils \
		devel/desktop-file-utils \
		x11/gtk+2,-guic

WANTLIB =	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png z pthread-stubs xcb gthread-2.0 pthread xcb-render \
		xcb-render-util gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0

.include <bsd.port.mk>
