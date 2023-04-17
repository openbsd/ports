COMMENT=	lightweight video thumbnailer for file managers

CATEGORIES=	graphics multimedia

DISTNAME=	ffmpegthumbnailer-2.2.2
REVISION=	0
GH_ACCOUNT=	dirkvdb
GH_PROJECT=	ffmpegthumbnailer
GH_COMMIT=	c2fba253f3751f9bb825defec66109e5d33c74d6

SHARED_LIBS=	ffmpegthumbnailer 6.0
HOMEPAGE=	https://github.com/dirkvdb/ffmpegthumbnailer
MAINTAINER=	Victor Kukshiev <andrey0bolkonsky@gmail.com>

# GPLv2+
PERMIT_PACKAGE=	Yes

COMPILER =	base-clang ports-gcc
MODULES =	devel/cmake
WANTLIB += avcodec avfilter avformat avutil c jpeg m png pthread ${COMPILER_LIBCXX} z

LIB_DEPENDS=	graphics/ffmpeg \
		graphics/jpeg \
		graphics/png

.include <bsd.port.mk>
