COMMENT=	creates DVD file structures

DISTNAME=	dvdauthor-0.7.2
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dvdauthor/}
REVISION=	1

HOMEPAGE=	http://dvdauthor.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ICE MagickCore-6.Q16 SM X11 Xext Xt bz2 c djvulibre
WANTLIB += dvdread expat fftw3 fontconfig freetype fribidi iconv
WANTLIB += jbig jpeg lcms2 lzma m openjp2 png pthread
WANTLIB += tiff webp xcb xml2 z
WANTLIB += aom dav1d de265 heif jasper raw_r webpdemux webpmux x265 zstd

LIB_DEPENDS=	devel/fribidi \
		devel/libdvdread \
		graphics/ImageMagick \
		textproc/libxml

MAKE_FLAGS+=	BISON="yacc"

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"


WRKDIST=	${WRKDIR}/dvdauthor

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dvdauthor
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/dvdauthor

.include <bsd.port.mk>

# XXX there is some limited functionality that requires nested routines
# the configure detection works with clang but not with our gcc
# -> activate the extra functionality on gcc (see HAVE_NESTED_ROUTINES)
.if !${PROPERTIES:Mclang}
# error: trampoline code generation is not allowed without -ftrampolines
CFLAGS += -ftrampolines
.endif
