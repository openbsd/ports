# $OpenBSD: Makefile,v 1.4 2006/11/05 14:42:56 bernd Exp $

COMMENT=		"music player daemon"

DISTNAME=		mpd-0.12.1
CATEGORIES=		audio

HOMEPAGE=		http://www.musicpd.org/

MAINTAINER=		Tobias Ulmer <tobiasu@tmux.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m pthread theora z

MASTER_SITES=		${HOMEPAGE}uploads/files/

MODULES=		converters/libiconv

LIB_DEPENDS=		vorbis,vorbisfile,vorbisenc::audio/libvorbis \
			audiofile::devel/libaudiofile \
			ao.>=3::audio/libao \
			faad::audio/faad \
			id3tag.>=3::audio/libid3tag \
			mad.>=2::audio/libmad \
			ogg.>=5::audio/libogg \
			OggFLAC.>=3,FLAC.>=7::audio/flac \
			mikmod.>=2::audio/libmikmod \
			mpcdec.>=1::audio/libmpcdec \
			shout.>=5::net/libshout \
			speex.>=4::audio/speex

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-ao \
			--enable-mod \
			--enable-shout \
			--disable-alsa \
			--disable-oss \
			--disable-pulse \
			--disable-sun \
			--bindir=${PREFIX}/sbin
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mpd
	${INSTALL_DATA} ${WRKSRC}/doc/mpdconf.example \
		${PREFIX}/share/examples/mpd/mpd.conf

.include <bsd.port.mk>
