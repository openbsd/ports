# $OpenBSD: Makefile,v 1.41 2009/04/06 18:56:55 kili Exp $

COMMENT=	Sound eXchange, the Swiss Army knife of audio manipulation

DISTNAME=	sox-14.2.0
PKGNAME=	${DISTNAME}p2
SHARED_LIBS +=  sox                  0.0      # .0.0
SHARED_LIBS +=  sfx                  0.0      # .0.0
CATEGORIES=	audio
HOMEPAGE=	http://sox.sourceforge.net/

# GPLv2.
# The libgsm issues have been fixed (see libgsm-1.0.13).
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
		samplerate.>=2::audio/libsamplerate \
		gsm.>=1::audio/gsm
WANTLIB=	c iconv m ogg sndio z

AUTOCONF_VERSION=2.62	# 2.63
AUTOMAKE_VERSION=1.9	# 1.10
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=autoconf automake
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-silent-libtool

# Don't use modules
CONFIGURE_ARGS+=--without-libltdl

# Sound drivers
CONFIGURE_ARGS+=--disable-libao \
		--disable-oss \
		--enable-sndio \
		--disable-sun-audio

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
	LDFLAGS="-L${WRKBUILD}/src/.libs -L${LOCALBASE}/lib"

post-extract:
	@cp ${FILESDIR}/sndio.c ${WRKSRC}/src

AUTO_ENV=	AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

post-patch:
	@echo "Running aclocal-${AUTOMAKE_VERSION} in ${WRKSRC}"
	@cd ${WRKSRC}; ${AUTO_ENV} aclocal -I m4

pre-configure:
	@echo "Running automake-${AUTOMAKE_VERSION} in ${WRKSRC}"
	@cd ${WRKSRC}; ${AUTO_ENV} automake --foreign

do-regress:
	@cd ${WRKSRC}/src && ./tests.sh && ./testall.sh

.include <bsd.port.mk>
