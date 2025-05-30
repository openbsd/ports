COMMENT=	Google WebP image format conversion tool

GH_ACCOUNT=	webmproject
GH_PROJECT=	libwebp
GH_TAGNAME=	v1.5.0
CATEGORIES=	graphics

SHARED_LIBS +=  sharpyuv             0.1      # 0.0
SHARED_LIBS +=  webp                 4.3      # 6.0
SHARED_LIBS +=  webpdecoder          2.1      # 2.0
SHARED_LIBS +=  webpdemux            2.0      # 2.0
SHARED_LIBS +=  webpmux              2.1      # 2.0

HOMEPAGE=	https://developers.google.com/speed/webp/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += GL GLU Xi Xmu c gif glut jpeg m png pthread tiff z

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/sdl

LIB_DEPENDS =	graphics/freeglut \
		graphics/giflib \
		graphics/jpeg \
		graphics/png \
		graphics/tiff

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON

DEBUG_PACKAGES=	${BUILD_PACKAGES}

NO_TEST=	Yes

.include <bsd.port.mk>
