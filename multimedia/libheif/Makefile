# $OpenBSD: Makefile,v 1.1.1.1 2020/02/24 23:22:56 sthen Exp $

COMMENT=	ISO/IEC 23008-12:2017 HEIF file format decoder and encoder

V=		1.6.2
DISTNAME=	libheif-$V

SHARED_LIBS +=  heif                      0.0 # 7.2

CATEGORIES=	multimedia graphics

HOMEPAGE=	https://www.libheif.org/

# LGPLv3+ (library), MIT (sample applications)
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c de265 ffi gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 iconv intl jpeg m
WANTLIB += pcre png x265 z

MASTER_SITES=	https://github.com/strukturag/libheif/releases/download/v$V/

COMPILER=	base-clang ports-gcc

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-go
CONFIGURE_ENV=	LDFLAGS=-L${LOCALBASE}/lib CPPFLAGS=-I${LOCALBASE}/include
USE_GMAKE=	Yes

LIB_DEPENDS=	graphics/gdk-pixbuf2 \
		multimedia/libde265
RUN_DEPENDS=	misc/shared-mime-info

.include <bsd.port.mk>
