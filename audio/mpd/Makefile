# $OpenBSD: Makefile,v 1.1.1.1 2006/05/13 09:52:49 bernd Exp $

COMMENT=		"music player daemon"

DISTNAME=		mpd-0.11.5
CATEGORIES=		audio

HOMEPAGE=		http://www.musicpd.org/

MAINTAINER=		Tobias Ulmer <tobiasu@tmux.org>

# GPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes 

WANTLIB=		c m pthread z ossaudio

MASTER_SITES=		http://mercury.chem.pitt.edu/~shank/

MODULES=		converters/libiconv

LIB_DEPENDS=		vorbis.5,vorbisfile.4::audio/libvorbis \
			audiofile.0::devel/libaudiofile \
			ao.3::audio/libao \
			faad.0::audio/faad \
			id3tag.3::audio/libid3tag \
			mad.2::audio/libmad \
			ogg.5::audio/libogg \
			FLAC.7::audio/flac \
			mikmod.2::audio/libmikmod

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-alsa --with-libFLAC=${LOCALBASE}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mpd
	${INSTALL_DATA} ${WRKSRC}/doc/mpdconf.example \
		${PREFIX}/share/examples/mpd/mpd.conf

.include <bsd.port.mk>
