COMMENT = 			seam-carving smart rescale gimp plugin
CATEGORIES =			graphics

HOMEPAGE = 			http://liquidrescale.wikidot.com/
DISTNAME = 			gimp-lqr-plugin-0.7.2
MASTER_SITES =			${HOMEPAGE}local--files/en%3Adownload-page-sources/
EXTRACT_SUFX =			.tar.bz2

# GPLv2
PERMIT_PACKAGE =		Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 babl-0.1 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gegl-0.4 gimp-2.0 gimpbase-2.0
WANTLIB += gimpcolor-2.0 gimpconfig-2.0 gimpmath-2.0 gimpmodule-2.0
WANTLIB += gimpui-2.0 gimpwidgets-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gtk-x11-2.0 harfbuzz intl json-glib-1.0 lqr-1 m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread z

MODULES =			textproc/intltool

CONFIGURE_STYLE =		gnu
CONFIGURE_ENV =			CPPFLAGS="-I${LOCALBASE}/include" \
				LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS =			graphics/liblqr \
				graphics/gimp/stable

.include <bsd.port.mk>
