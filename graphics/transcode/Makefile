# $OpenBSD: Makefile,v 1.4 2004/09/18 20:57:07 espie Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"video stream processing tools"

DISTNAME=	transcode-0.6.12
CATEGORIES=	graphics audio

HOMEPAGE=	http://zebra.fh-weingarten.de/~transcode/

MAINTAINER=	Waldemar Brodkorb <wbx@openbsd.de>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://zebra.fh-weingarten.de/~transcode/pre/

.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* gcc-*
.endif

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS=	::devel/nasm
PKG_ARGS+=-Di386=1
.else
PKG_ARGS+=-Di386=0
.endif

LIB_DEPENDS=	SDL.2::devel/sdl \
		a52.0::audio/liba52 \
		dvdread.3::devel/libdvdread \
		jpeg.62::graphics/jpeg \
		mp3lame.0::audio/lame \
		ogg.5::audio/libogg \
		vorbis.3,vorbisfile.4::audio/libvorbis \
		xml2.8::textproc/libxml

RUN_DEPENDS=	::graphics/ffmpeg \
		::audio/sox

AUTOCONF_VERSION=2.54
CONFIGURE_STYLE=gnu autoconf
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBFAME_CONFIG="no"
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/autotools
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--enable-liba52 \
		--with-ogg --with-vorbis \
		--disable-altivec --disable-sse \
		--disable-mjpeg \
		--disable-text \
		--disable-v4l \
		--with-avifile-mods=no \
		--with-magick-mods=no \
		--without-dv \
		--without-libfame \
		--without-libmpeg3 \
		--without-lzo \
		--without-openqt --without-qt \
		--without-pvm3 \
		--without-theora

.include <bsd.port.mk>
