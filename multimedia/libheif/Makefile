COMMENT=	HEIF and AVIF file format decoder and encoder

V=		1.17.6
DISTNAME=	libheif-$V

SHARED_LIBS +=  heif 2.0

CATEGORIES=	multimedia graphics

HOMEPAGE=	https://github.com/strukturag/libheif

# LGPLv3+ (library), MIT (sample applications)
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} aom c dav1d de265 gdk_pixbuf-2.0
WANTLIB += glib-2.0 gobject-2.0 intl jpeg m png sharpyuv x265
WANTLIB += z

SITES=		https://github.com/strukturag/libheif/releases/download/v$V/

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake

LIB_DEPENDS=	graphics/gdk-pixbuf2 \
		graphics/libwebp \
		multimedia/aom \
		multimedia/dav1d \
		multimedia/libde265 \
		graphics/jpeg \
		multimedia/x265
# examples
LIB_DEPENDS+=	graphics/png

CONFIGURE_ARGS= -DWITH_DAV1D=On \
		-DWITH_JPEG_DECODER=On \
		-DWITH_JPEG_ENCODER=On \
		-DWITH_RAV1E=Off \
		-DWITH_SvtEnc=Off

.include <bsd.port.mk>
