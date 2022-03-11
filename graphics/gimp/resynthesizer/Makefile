COMMENT = 	gimp plugin for image reparation

V = 2.0.3
GH_ACCOUNT = bootchk
GH_PROJECT = resynthesizer
GH_TAGNAME = v$V

PKGNAME = 	gimp-resynthesizer-plugin-$V

CATEGORIES = 	graphics

HOMEPAGE = http://www.logarithmic.net/pfh/resynthesizer

# GPLv2
PERMIT_PACKAGE = Yes

WANTLIB += atk-1.0 babl-0.1 c cairo fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gegl-0.4 gimp-2.0
WANTLIB += gimpbase-2.0 gimpcolor-2.0 gimpconfig-2.0 gimpmath-2.0
WANTLIB += gimpmodule-2.0 gimpui-2.0 gimpwidgets-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-x11-2.0 harfbuzz intl json-glib-1.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 z
WANTLIB += gthread-2.0 pthread
WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender

# MASTER_SITES = http://www.logarithmic.net/pfh-files/resynthesizer/
MASTER_SITES = ${MASTER_SITES_GITHUB}

BUILD_DEPENDS =	graphics/gimp/stable \
		devel/gettext,-tools \
		textproc/intltool
RUN_DEPENDS =	graphics/gimp/stable
# there is no actual test and it errors out
NO_TEST =	Yes

AUTOCONF_VERSION = 2.69
AUTOMAKE_VERSION = 1.16
CONFIGURE_STYLE = autoreconf
AUTORECONF =	./autogen.sh

## for an easier time if we ever get gimp 3.0
GIMPV = 2.0
SUBST_VARS +=	GIMPV

.include <bsd.port.mk>
