# $OpenBSD: Makefile,v 1.11 2006/01/18 13:10:03 steven Exp $

COMMENT=	"GNU Image Manipulation Program"

DISTNAME=	gimp-2.2.9
PKGNAME=	${DISTNAME}p2
SHARED_LIBS=		gimp-2.0	200.9	\
			gimpbase-2.0	200.9	\
			gimpcolor-2.0	200.9	\
			gimpmath-2.0	200.9	\
			gimpmodule-2.0	200.9	\
			gimpthumb-2.0	200.9	\
			gimpui-2.0	200.9	\
			gimpwidgets-2.0	200.9
MODGNU_SHARED_LIBS=	gimp-2.0	''	\
			gimpbase-2.0	''	\
			gimpcolor-2.0	''	\
			gimpmath-2.0	''	\
			gimpmodule-2.0	''	\
			gimpthumb-2.0	''	\
			gimpui-2.0	''	\
			gimpwidgets-2.0	''

.for _name _version in ${SHARED_LIBS}
LIB${_name}_ALIAS=	${_name:C/[.-]/_/g}
.endfor

CATEGORIES=	graphics
DIR=		gimp/v2.2
MASTER_SITES=	ftp://ftp.gimp.org/pub/${DIR}/ \
		ftp://ftp.sunet.se/pub/gnu/${DIR}/ \
		ftp://ftp.cs.umn.edu/pub/${DIR}/ \
		ftp://ftp.funet.fi/pub/sci/graphics/packages/gimp/${DIR}/

HOMEPAGE=	http://www.gimp.org/

BUILD_DEPENDS=	:pkgconfig->=0.12.0p1:devel/pkgconfig \
		:p5-XML-Parser-*:textproc/p5-XML-Parser
RUN_DEPENDS=    :wget-*:net/wget
LIB_DEPENDS=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
		aa.1.3::graphics/aalib \
		art_lgpl_2.5::graphics/libart \
		exif::graphics/libexif \
		mng::graphics/libmng \
		tiff.35::graphics/tiff \
		wmf.6,wmflite.6::graphics/libwmf

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xext Xft Xmu Xpm Xrender Xt atk-1.0.0.0 c \
		fontconfig freetype glib-2.0.0.0 gmodule-2.0.0.0 \
		gobject-2.0.0.0 jpeg.62 lcms.1 m pango-1.0.0.0 \
		pangox-1.0.0.0 pangoxft-1.0.0.0 pangoft2-1.0.0.0 png.4 \
		ncurses xml2 z

MODULES=	devel/gettext

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

AUTOCONF_VERSION= 2.59

CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --disable-print --without-gtkhtml2 --without-librsvg \
		 --disable-sse
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=	altivec
FLAVOR?=

.if ${FLAVOR:L} == "altivec"
ONLY_FOR_ARCHS= powerpc   
CONFIGURE_ARGS+= --enable-altivec
.else
CONFIGURE_ARGS+= --disable-altivec
.endif

.if ${MACHINE_ARCH} == "i386" || ${MACHINE} == "amd64"
CONFIGURE_ARGS+= --enable-mmx
.endif

.include <bsd.port.mk>
