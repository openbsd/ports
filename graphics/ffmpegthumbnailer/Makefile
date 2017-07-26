# $OpenBSD: Makefile,v 1.32 2017/07/26 22:45:23 sthen Exp $

COMMENT=	lightweight video thumbnailer for file managers

DISTNAME=	ffmpegthumbnailer-2.0.8
REVISION=	5
CATEGORIES=	graphics multimedia
MASTER_SITES=	${MASTER_SITE_GOOGLECODE:=ffmpegthumbnailer/}

SHARED_LIBS=	ffmpegthumbnailer	4.1

HOMEPAGE=	https://github.com/dirkvdb/ffmpegthumbnailer

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += avcodec avformat avutil c jpeg m png pthread ${COMPILER_LIBCXX}
WANTLIB += swscale xvidcore

LIB_DEPENDS=	graphics/ffmpeg \
		graphics/jpeg \
		graphics/png

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
