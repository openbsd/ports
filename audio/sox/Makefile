# $OpenBSD: Makefile,v 1.39 2009/01/11 17:33:56 naddy Exp $

COMMENT=	Sound eXchange, the Swiss Army knife of audio manipulation

DISTNAME=	sox-14.2.0
PKGNAME=	${DISTNAME}p0
SHARED_LIBS +=  sox                  0.0      # .0.0
SHARED_LIBS +=  sfx                  0.0      # .0.0
CATEGORIES=	audio
HOMEPAGE=	http://sox.sourceforge.net/

# GPLv2, but the included gsm library was originally distributed with an
# incomplete license.
PERMIT_PACKAGE_CDROM=	no redistribution
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	no redistribution
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sox/}

# see CONFIGURE_ARGS below
LIB_DEPENDS=	vorbis.>=6,vorbisenc.>=2,vorbisfile.>=5::audio/libvorbis \
		FLAC.>=9::audio/flac \
		magic.>=1::devel/libmagic \
		mad.>=2::audio/libmad \
		id3tag.>=3::audio/libid3tag \
		mp3lame.>=2::audio/lame \
		wavpack.>=0::audio/wavpack \
		png.>=8::graphics/png \
		samplerate.>=2::audio/libsamplerate
WANTLIB=	c m ogg z

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-silent-libtool

# Don't use modules
CONFIGURE_ARGS+=--without-libltdl

# Sound drivers
CONFIGURE_ARGS+=--disable-libao \
		--disable-oss \
		--enable-sun-audio

# Additional file formats
CONFIGURE_ARGS+=--without-sndfile \
		--with-ogg \
		--with-flac \
		--without-ffmpeg \
		--with-magic \
		--with-mad \
		--with-id3tag \
		--with-lame \
		--without-amr-wb \
		--without-amr-nb \
		--with-wavpack \
		--with-png \
		--with-samplerate \
		--without-ladspa

CONFIGURE_ENV= \
	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
	LDFLAGS="-L${LOCALBASE}/lib"

do-regress:
	@cd ${WRKSRC}/src && ./tests.sh && ./testall.sh

.include <bsd.port.mk>
