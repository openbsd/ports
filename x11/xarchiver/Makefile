# $OpenBSD: Makefile,v 1.22 2016/08/27 15:29:55 jca Exp $

COMMENT =	simple archive manager
CATEGORIES =	x11 archivers
DISTNAME =	xarchiver-0.5.4
REVISION =	1

MAINTAINER =	Landry Breuil <landry@openbsd.org>
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=xarchiver/}
EXTRACT_SUFX =	.tar.bz2
HOMEPAGE =	http://xarchiver.sourceforge.net

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

USE_GMAKE =	Yes

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

BUILD_DEPENDS =	devel/gettext-tools
LIB_DEPENDS =	devel/gettext \
		x11/gtk+2
RUN_DEPENDS =	archivers/zip \
		archivers/unzip \
		archivers/gtar \
		archivers/p7zip \
		devel/xdg-utils \
		devel/desktop-file-utils \
		x11/gtk+3,-guic

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm z

.include <bsd.port.mk>
