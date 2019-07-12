# $OpenBSD: Makefile,v 1.5 2019/07/12 20:47:04 sthen Exp $

COMMENT =	simple GTK+2 raster painting program

DISTNAME =	mtpaint-3.40
EXTRACT_SUFX =	.tar.bz2
REVISION =	2

CATEGORIES =	graphics

HOMEPAGE =	http://mtpaint.sourceforge.net/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 intl jasper jpeg lcms2 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 png pthread tiff z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=mtpaint/}

BUILD_DEPENDS =	devel/gettext,-tools
LIB_DEPENDS =	devel/gettext,-runtime \
		graphics/jasper \
		graphics/lcms2 \
		graphics/tiff \
		x11/gtk+2
RUN_DEPENDS =	devel/desktop-file-utils

USE_GMAKE =	Yes
CONFIGURE_STYLE = simple
CONFIGURE_ARGS = nogif jpeg jasper staticft tiff lcms \
		 lcms2 intl man thread cflags \
		 --mandir=${TRUEPREFIX}/man

NO_TEST=	Yes

.include <bsd.port.mk>
