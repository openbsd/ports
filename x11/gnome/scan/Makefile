# $OpenBSD: Makefile,v 1.12 2009/07/12 20:32:02 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT-main=	easy-to-use scanning application for GNOME
COMMENT-gimp=	flegita GIMP plugin for gnome-scan

GNOME_PROJECT=	gnome-scan
GNOME_VERSION=	0.6.2
CATEGORIES=	graphics

PKGNAME-main=	${DISTNAME}p1
PKGNAME-gimp=	${GNOME_PROJECT}-gimp-${GNOME_VERSION}p0

SHARED_LIBS=	gnomescan	0.0 # .0.0

EXTRACT_SUFX=	.tar.gz

HOMEPAGE=	http://projects.gnome.org/gnome-scan/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 babl-0.0 c \
		cairo expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0  glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png pthread z gio-2.0 \
		dbus-1 dbus-glib-1

MULTI_PACKAGES=	-main -gimp

MODULES=	devel/gettext \
		x11/gnome

WANTLIB-main=	${WANTLIB} exif gphoto2 gphoto2_port jpeg ltdl tiff usb \
		avahi-client avahi-common

LIB_DEPENDS-main= ${LIB_DEPENDS} \
		sane.>=1::graphics/sane-backends \
		gegl-0.0::graphics/gegl \
		gconf-2.>=6::devel/gconf2

WANTLIB-gimp=	${WANTLIB} gconf-2 gegl-0.0
LIB_DEPENDS-gimp= ${LIB_DEPENDS} \
		gnomescan::${BUILD_PKGPATH},-main \
		gimp-2.0.>=245,gimpbase-2.0,gimpcolor-2.0,gimpconfig-2.0,gimpmath-2.0,gimpmodule-2.0,gimpui-2.0,gimpwidgets-2.0::graphics/gimp/stable

USE_X11=	Yes
DESKTOP_FILES=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--disable-gtk-doc
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.ifndef DEBUG
CONFIGURE_ARGS+=--enable-debug=no
MAKE_FLAGS=	AM_CFLAGS=""
.endif

.include <bsd.port.mk>
