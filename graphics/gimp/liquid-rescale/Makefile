# $OpenBSD: Makefile,v 1.17 2019/07/12 20:46:59 sthen Exp $

COMMENT = 			seam-carving smart rescale gimp plugin
CATEGORIES =			graphics

HOMEPAGE = 			http://liquidrescale.wikidot.com/
DISTNAME = 			gimp-lqr-plugin-0.7.1
MASTER_SITES =			${HOMEPAGE}local--files/en%3Adownload-page-sources/
EXTRACT_SUFX =			.tar.bz2
REVISION =                      2

# GPLv2
PERMIT_PACKAGE =		Yes

WANTLIB =  GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gimp-2.0 gimpbase-2.0
WANTLIB += gimpcolor-2.0 gimpconfig-2.0 gimpmath-2.0 gimpmodule-2.0
WANTLIB += gimpui-2.0 gimpwidgets-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 iconv intl lqr-1 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread xcb xcb-render xcb-shm z

MODULES =			textproc/intltool

CONFIGURE_STYLE =		gnu

LIB_DEPENDS =			graphics/liblqr \
				graphics/gimp/stable

COPTS =				-I${LOCALBASE}/include \
				-L${LOCALBASE}/lib


.include <bsd.port.mk>
