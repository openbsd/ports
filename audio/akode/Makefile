# $OpenBSD: Makefile,v 1.14 2009/07/19 12:42:04 sthen Exp $

COMMENT=	decoding library for KDE Multimedia

DISTNAME=	akode-2.0.2
PKGNAME=	${DISTNAME}p7
SHARED_LIBS +=	akode                2.1      # .2.0

CATEGORIES=	audio multimedia x11/kde

HOMEPAGE=	http://www.kde-apps.org/content/show.php?content=30375

MASTER_SITES=	http://www.kde-apps.org/CONTENT/content-files/
EXTRACT_SUFX=	.tar.bz2
DISTFILES=	30375-${DISTNAME}${EXTRACT_SUFX}

# LGPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	FLAC.>=8::audio/flac \
		mad::audio/libmad \
		speex::audio/speex \
		vorbis,vorbisfile,vorbisenc::audio/libvorbis \
		ltdl::devel/libtool,-ltdl \
		avcodec.>=10,avformat.>=10,avutil.>=3::graphics/ffmpeg \
		jack::audio/jack

WANTLIB=	a52 bz2 c faac faad samplerate m mp3lame ogg pthread \
		schroedinger-1.0 stdc++ theora x264 z

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.60
CONFIGURE=		/bin/sh ${WRKDIST}/admin/cvs.sh configure
CONFIGURE_ENV=		PTHREAD_LIBS=-pthread
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include \
			--with-extra-libs=${LOCALBASE}/lib \
			--with-jack \
			--without-polyaudio \
			--without-oss

.include <bsd.port.mk>
