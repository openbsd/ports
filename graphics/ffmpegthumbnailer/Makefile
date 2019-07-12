# $OpenBSD: Makefile,v 1.35 2019/07/12 20:46:58 sthen Exp $m

COMMENT=	lightweight video thumbnailer for file managers

CATEGORIES=	graphics multimedia

GH_ACCOUNT=	dirkvdb
GH_PROJECT=	ffmpegthumbnailer
GH_TAGNAME=	2.2.0

SHARED_LIBS=	ffmpegthumbnailer 5.0
HOMEPAGE=	https://github.com/dirkvdb/ffmpegthumbnailer
MAINTAINER=	Victor Kukshiev <andrey0bolkonsky@gmail.com>
MASTER_SITES=	https://github.com/dirkvdb/ffmpegthumbnailer/releases/download/${GH_TAGNAME}/
EXTRACT_SUFX=	.tar.bz2

# GPLv2+
PERMIT_PACKAGE=	Yes

COMPILER =	base-clang ports-gcc
MODULES =	devel/cmake
WANTLIB += avcodec avfilter avformat avutil c jpeg m png pthread ${COMPILER_LIBCXX} z

LIB_DEPENDS=	graphics/ffmpeg \
		graphics/jpeg \
		graphics/png

.include <bsd.port.mk>
