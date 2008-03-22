# $OpenBSD: Makefile,v 1.31 2008/03/22 22:46:12 merdely Exp $

COMMENT=	GNU Image Manipulation Program

DISTNAME=	gimp-2.4.5
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=	gimp-2.0	245.00	\
		gimpbase-2.0	245.00	\
		gimpcolor-2.0	245.00	\
		gimpconfig-2.0	245.00	\
		gimpmath-2.0	245.00	\
		gimpmodule-2.0	245.00	\
		gimpthumb-2.0	245.00	\
		gimpui-2.0	245.00	\
		gimpwidgets-2.0	245.00

CATEGORIES=	graphics
DIR=		gimp/v2.4
MASTER_SITES=	ftp://ftp.gimp.org/pub/${DIR}/ \
		ftp://ftp.sunet.se/pub/gnu/${DIR}/ \
		ftp://ftp.cs.umn.edu/pub/gimp/pub/${DIR}/

HOMEPAGE=	http://www.gimp.org/

EXTRACT_SUFX=	.tar.bz2

BUILD_DEPENDS=	:p5-XML-Parser-*:textproc/p5-XML-Parser
RUN_DEPENDS=    :wget-*:net/wget
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		aa.>=1.3::graphics/aalib \
		art_lgpl_2.>=5::graphics/libart \
		exif::graphics/libexif \
		mng::graphics/libmng \
		tiff.>=35::graphics/tiff \
		wmf.>=6,wmflite.>=6::graphics/libwmf \
		poppler.>=3,poppler-glib.>=3::print/poppler

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xext Xmu Xpm Xrender Xt atk-1.0 c \
		Xcomposite Xdamage pcre \
		fontconfig freetype glib-2.0 gmodule-2.0 \
		gobject-2.0 jpeg.>=62 lcms.>=1 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 png.>=4 \
		pthread ncurses xml2 z cairo glitz \
		Xau Xcursor Xdmcp Xfixes Xi Xinerama Xrandr \
		expat Xcomposite Xdamage gthread-2.0 pcre

MODULES=	devel/gettext

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

AUTOCONF_VERSION= 2.61

CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=--without-gtkhtml2 --without-librsvg --without-print \
		--without-gnomevfs --without-libcurl --without-dbus \
		--disable-python
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

FLAVORS=	altivec
FLAVOR?=

.if ${FLAVOR:L} == "altivec"
ONLY_FOR_ARCHS= powerpc   
.else
CONFIGURE_ARGS+= --disable-altivec
.endif

.include <bsd.port.mk>
