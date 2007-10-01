# $OpenBSD: Makefile,v 1.7 2007/10/01 17:39:50 jakemsr Exp $
COMMENT=	Decoding Library for KDE Multimedia

DISTNAME=	akode-2.0.2
PKGNAME=	${DISTNAME}p1
SHARED_LIBS +=	akode                2.1      # .2.0

CATEGORIES=	audio multimedia x11/kde

HOMEPAGE=	http://www.kde-apps.org/content/show.php?content=30375

MASTER_SITES=	http://www.kde-apps.org/CONTENT/content-files/
EXTRACT_SUFX=	.tar.bz2
DISTFILES=	30375-${DISTNAME}${EXTRACT_SUFX}

# LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	FLAC.>=8::audio/flac \
		mad::audio/libmad \
		speex::audio/speex \
		vorbis,vorbisfile::audio/libvorbis \
		ltdl::devel/libtool,-ltdl \
		avcodec.>=10,avformat.>=10::graphics/ffmpeg \
		samplerate.>=1::audio/libsamplerate

WANTLIB=	c stdc++ pthread m ossaudio ogg

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.60
CONFIGURE=		/bin/sh ${WRKDIST}/admin/cvs.sh configure
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include \
			--with-extra-libs=${LOCALBASE}/lib

.include <bsd.port.mk>
