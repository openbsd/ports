### Updating the port ###
# The stable libyuv version follows the chromium browser:
# https://chromereleases.googleblog.com/search/label/Desktop%20Update
# search for "The stable channel has been updated to" XX.X.XXXX.XXX
#  -> https://github.com/chromium/chromium/blob/151.0.7922.174/DEPS
#     -> 'src/third_party/libyuv': '8aeb3a9ca36341a640528e59b34b5d641080dca8/include/libyuv/version.h'
# https://chromium.googlesource.com/libyuv/libyuv/+/8aeb3a9ca36341a640528e59b34b5d641080dca8/include/libyuv/version.h/include/libyuv/version.h
#  -> #define LIBYUV_VERSION 1948

COMMENT=	YUV scaling and conversion library

DISTNAME=	8aeb3a9ca36341a640528e59b34b5d641080dca8
DIST_SUBDIR=	libyuv
PKGNAME=	libyuv-1948
WRKDIST=	${WRKDIR}

SHARED_LIBS=	yuv	0.0

CATEGORIES=	multimedia graphics devel

HOMEPAGE=	https://chromium.googlesource.com/libyuv/libyuv/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

#SITES=		https://chromium.googlesource.com/libyuv/libyuv/+archive/
SITES=		https://distfiles.bsdfrog.org/

WANTLIB += ${COMPILER_LIBCXX} c jpeg m

MODULES=	devel/cmake

LIB_DEPENDS=	graphics/jpeg

DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>
