# $OpenBSD: Makefile,v 1.23 2007/05/23 21:15:22 rui Exp $

COMMENT=	"GNU Image Manipulation Program"

DISTNAME=	gimp-2.2.14
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=	gimp-2.0	200.14	\
		gimpbase-2.0	200.14	\
		gimpcolor-2.0	200.14	\
		gimpmath-2.0	200.14	\
		gimpmodule-2.0	200.14	\
		gimpthumb-2.0	200.14	\
		gimpui-2.0	200.14	\
		gimpwidgets-2.0	200.14

CATEGORIES=	graphics
DIR=		gimp/v2.2
MASTER_SITES=	ftp://ftp.gimp.org/pub/${DIR}/ \
		ftp://ftp.sunet.se/pub/gnu/${DIR}/ \
		ftp://ftp.cs.umn.edu/pub/${DIR}/ \
		ftp://ftp.funet.fi/pub/sci/graphics/packages/gimp/${DIR}/

HOMEPAGE=	http://www.gimp.org/

BUILD_DEPENDS=	:p5-XML-Parser-*:textproc/p5-XML-Parser
RUN_DEPENDS=    :wget-*:net/wget
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		aa.>=1.3::graphics/aalib \
		art_lgpl_2.>=5::graphics/libart \
		exif::graphics/libexif \
		mng::graphics/libmng \
		tiff.>=35::graphics/tiff \
		wmf.>=6,wmflite.>=6::graphics/libwmf

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xext Xmu Xpm Xrender Xt atk-1.0 c \
		fontconfig freetype glib-2.0 gmodule-2.0 \
		gobject-2.0 jpeg.>=62 lcms.>=1 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 png.>=4 \
		pthread ncurses xml2 z cairo glitz
WANTLIB += Xau Xcursor Xdmcp Xfixes Xi Xinerama Xrandr expat

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
