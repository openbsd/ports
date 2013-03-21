# $OpenBSD: Makefile,v 1.22 2013/03/21 08:45:18 ajacoutot Exp $

COMMENT=	lightweight video thumbnailer for file managers

DISTNAME=	ffmpegthumbnailer-2.0.8
CATEGORIES=	graphics multimedia
MASTER_SITES=	http://ffmpegthumbnailer.googlecode.com/files/

SHARED_LIBS=	ffmpegthumbnailer	4.1

HOMEPAGE=	http://code.google.com/p/ffmpegthumbnailer

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += avcodec avformat avutil c jpeg m png pthread stdc++
WANTLIB += swscale

LIB_DEPENDS=	graphics/ffmpeg \
		graphics/jpeg \
		graphics/png

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
