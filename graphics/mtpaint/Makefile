# $OpenBSD: Makefile,v 1.6 2021/02/02 22:41:40 cwen Exp $

COMMENT =	simple GTK+2 raster painting program

DISTNAME =	mtpaint-3.50
EXTRACT_SUFX =	.tar.bz2

CATEGORIES =	graphics

HOMEPAGE =	http://mtpaint.sourceforge.net/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz intl jasper jpeg lcms2
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 png pthread
WANTLIB += tiff z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=mtpaint/}

BUILD_DEPENDS =	devel/gettext,-tools
LIB_DEPENDS =	devel/gettext,-runtime \
		graphics/jasper \
		graphics/lcms2 \
		graphics/tiff \
		x11/gtk+2
RUN_DEPENDS =	devel/desktop-file-utils

USE_GMAKE =	Yes
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	nogif jpeg jasper staticft tiff lcms \
		 	lcms2 intl man thread cflags \
		 	--mandir=${TRUEPREFIX}/man

NO_TEST =	Yes

# Remove after clang update to LLVM11. Meanwhile it avoids false positives with
# a patched clang-10 (mtpaint uses that flag only with clang-11 and gcc-10)
CFLAGS +=	-fcommon

.include <bsd.port.mk>
