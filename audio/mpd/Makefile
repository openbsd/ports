# $OpenBSD: Makefile,v 1.18 2009/06/29 15:34:37 beck Exp $

COMMENT=		Music Player Daemon
DISTNAME=		mpd-0.13.2
PKGNAME=		${DISTNAME}p4
CATEGORIES=		audio
HOMEPAGE=		http://www.musicpd.org/
MAINTAINER=		Tobias Ulmer <tobiasu@tmux.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m pthread ogg z

MASTER_SITES=		${HOMEPAGE}uploads/files/

MODULES=		converters/libiconv

LIB_DEPENDS=		audiofile::devel/libaudiofile \
			ao::audio/libao \
			samplerate::audio/libsamplerate \
			faad.>=2::audio/faad \
			FLAC::audio/flac \
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
			--disable-jack \
			--enable-mod \
			--bindir=${PREFIX}/sbin \
			--with-zeroconf=no
# OggFLAC and tremor tests, initgroups(3)
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include -D_BSD_SOURCE"

.if ${FLAVOR:L:Mtremor}
CONFIGURE_ARGS+=	--with-tremor \
			--disable-oggflac \
			--disable-shout
LIB_DEPENDS+=		vorbisidec::audio/tremor
.else

WANTLIB+=		theora
LIB_DEPENDS+=		vorbis,vorbisfile,vorbisenc::audio/libvorbis \
			speex::audio/speex \
			shout::net/libshout
.endif

USE_LIBTOOL=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mpd
	${INSTALL_DATA} ${WRKSRC}/doc/mpdconf.example \
		${PREFIX}/share/examples/mpd/mpd.conf

.include <bsd.port.mk>
