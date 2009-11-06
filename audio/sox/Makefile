# $OpenBSD: Makefile,v 1.42 2009/11/06 00:04:37 sthen Exp $

COMMENT=	Sound eXchange, the Swiss Army knife of audio manipulation

DISTNAME=	sox-14.3.0
SHARED_LIBS +=	sox 1.0 # .1.0
CATEGORIES=	audio
HOMEPAGE=	http://sox.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
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
		gsm.>=1::audio/gsm
WANTLIB=	c iconv m ogg sndio z

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-silent-libtool

# Don't use modules
CONFIGURE_ARGS+=--without-libltdl

# Sound drivers
CONFIGURE_ARGS+=--without-ao \
		--without-oss \
		--with-sndio \
		--without-sunaudio

# Additional file formats
CONFIGURE_ARGS+=--without-sndfile \
		--with-oggvorbis \
		--with-flac \
		--without-ffmpeg \
		--with-magic \
		--with-mad \
		--with-id3tag \
		--with-lame \
		--without-amrwb \
		--without-amrnb \
		--with-wavpack \
		--with-png \
		--without-ladspa

CONFIGURE_ENV= \
	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
	LDFLAGS="-L${WRKBUILD}/src/.libs -L${LOCALBASE}/lib"

AUTO_ENV=	AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

do-regress:
	@cd ${WRKSRC}/src && ./tests.sh && ./testall.sh

.include <bsd.port.mk>
