# $OpenBSD: Makefile,v 1.39 2016/07/01 13:04:32 jasper Exp $

COMMENT=	image manipulation library

DISTNAME=	imlib2-1.4.7
REVISION=	1
SHARED_LIBS=	Imlib2	6.0	# .5.7
CATEGORIES=	graphics

HOMEPAGE=	http://www.enlightenment.org/p.php?p=about/libs/imlib2&l=en

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=enlightenment/}

WANTLIB=	X11 Xext c freetype m xcb z \
		jpeg>=62 gif>=5 png>=2 tiff>=35 bz2 id3tag>=3
LIB_DEPENDS+=	graphics/jpeg \
		graphics/giflib \
		graphics/png \
		graphics/tiff \
		archivers/bzip2 \
		audio/libid3tag

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+= --disable-mmx
.endif
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

.include <bsd.port.mk>
