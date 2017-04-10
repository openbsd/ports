# $OpenBSD: Makefile,v 1.30 2017/04/10 11:46:20 sthen Exp $

COMMENT=	lightweight video thumbnailer for file managers

DISTNAME=	ffmpegthumbnailer-2.0.8
REVISION=	4
CATEGORIES=	graphics multimedia
MASTER_SITES=	${MASTER_SITE_GOOGLECODE:=ffmpegthumbnailer/}

SHARED_LIBS=	ffmpegthumbnailer	4.1

HOMEPAGE=	https://github.com/dirkvdb/ffmpegthumbnailer

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += avcodec avformat avutil c jpeg m png pthread ${LIBCXX}
WANTLIB += swscale xvidcore

LIB_DEPENDS=	graphics/ffmpeg \
		graphics/jpeg \
		graphics/png

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
