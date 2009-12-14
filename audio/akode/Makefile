# $OpenBSD: Makefile,v 1.17 2009/12/14 00:02:17 jakemsr Exp $

COMMENT=	decoding library for KDE Multimedia

DISTNAME=	akode-2.0.2
PKGNAME=	${DISTNAME}p10
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
		avcodec.>=13.1,avformat.>=12,avutil.>=6:ffmpeg->=20080620p10:graphics/ffmpeg \
		jack::audio/jack

WANTLIB=	a52 bz2 c faac faad samplerate m mp3lame ogg pthread \
		oil-0.3 schroedinger-1.0 sndio stdc++ theora x264 z

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

CONFIGURE_STYLE=	gnu
AUTOCONF_VERSION=	2.60
AUTOMAKE_VERSION=	1.9
CONFIGURE=		/bin/sh ${WRKDIST}/admin/cvs.sh configure
CONFIGURE_ENV=		PTHREAD_LIBS=-pthread
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include \
			--with-extra-libs=${LOCALBASE}/lib \
			--with-jack \
			--without-polyaudio \
			--without-oss

post-extract:
	mkdir -p ${WRKSRC}/akode/plugins/sndio_sink
	cp ${FILESDIR}/{Makefile.am,sndio_sink.*}  ${WRKSRC}/akode/plugins/sndio_sink

pre-configure:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -i

.include <bsd.port.mk>
