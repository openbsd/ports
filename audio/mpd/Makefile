# $OpenBSD: Makefile,v 1.6 2007/06/22 11:42:14 jasper Exp $

COMMENT=		"Music Player Daemon"
DISTNAME=		mpd-0.13.0
CATEGORIES=		audio
HOMEPAGE=		http://www.musicpd.org/
MAINTAINER=		Tobias Ulmer <tobiasu@tmux.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m pthread z

MASTER_SITES=		${HOMEPAGE}uploads/files/

MODULES=		converters/libiconv

LIB_DEPENDS=		audiofile::devel/libaudiofile \
			ao::audio/libao \
			samplerate::audio/libsamplerate \
			faad::audio/faad \
			id3tag::audio/libid3tag \
			mad::audio/libmad \
			mikmod::audio/libmikmod \
			mpcdec::audio/libmpcdec

FLAVORS=		tremor
FLAVOR?=

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=        --enable-ao \
			--disable-alsa \
                        --disable-oss \
                        --disable-pulse \
                        --disable-sun \
			--enable-mod \
			--bindir=${PREFIX}/sbin
# OggFLAC and tremor tests
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib"

.if ${FLAVOR:L:Mtremor}
CONFIGURE_ARGS+=	--with-tremor \
			--disable-oggflac \
			--disable-shout
LIB_DEPENDS+=		vorbisidec::audio/tremor \
			FLAC::audio/flac
.else

WANTLIB+=		theora
LIB_DEPENDS+=		vorbis,vorbisfile,vorbisenc::audio/libvorbis \
			ogg::audio/libogg \
			OggFLAC,FLAC::audio/flac \
			speex::audio/speex \
			shout::net/libshout
.endif

USE_LIBTOOL=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mpd
	${INSTALL_DATA} ${WRKSRC}/doc/mpdconf.example \
		${PREFIX}/share/examples/mpd/mpd.conf

.include <bsd.port.mk>
