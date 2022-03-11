COMMENT=	HEIF and AVIF file format decoder and encoder

V=		1.12.0
DISTNAME=	libheif-$V

SHARED_LIBS +=  heif                      1.2 # 9.0

CATEGORIES=	multimedia graphics

HOMEPAGE=	https://github.com/strukturag/libheif

# LGPLv3+ (library), MIT (sample applications)
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} aom c dav1d de265 ffi gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 iconv intl
WANTLIB += jpeg m pcre png x265 z

MASTER_SITES=	https://github.com/strukturag/libheif/releases/download/v$V/

COMPILER=	base-clang ports-gcc

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-go
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS=	graphics/gdk-pixbuf2 \
		multimedia/aom \
		multimedia/dav1d \
		multimedia/libde265 \
		multimedia/x265
RUN_DEPENDS=	misc/shared-mime-info

.include <bsd.port.mk>
