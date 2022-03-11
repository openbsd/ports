COMMENT=	Sound eXchange, the Swiss Army knife of audio manipulation

V=		14.4.2pl20210509
# see AC_INIT in ${WRKSRC}/configure.ac
GIT_V=		14.4.3git
DISTNAME=	sox-${V}
SHARED_LIBS +=	sox 4.1 # 3.0

CATEGORIES=	audio
HOMEPAGE=	http://sox.sourceforge.net/
MAINTAINER=	Jan Stary <hans@stare.cz>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c m z sndio
WANTLIB += FLAC gsm mad id3tag mp3lame ogg
WANTLIB += sndfile vorbis vorbisenc vorbisfile
WANTLIB += opusfile twolame wavpack
WANTLIB += png

GITWEB_URL=	https://sourceforge.net/code-snapshots/git
GIT_COMMIT=	42b3557e13e0fe01a83465b672d89faddbe65f49

# mirror git checkout as tarball for latest fixes until new release.
# see dist: target and `make dist' to generate tarball.
MASTER_SITES=	https://namtsui.com/source/

# see CONFIGURE_ARGS below
LIB_DEPENDS=			\
	audio/flac		\
	audio/gsm		\
	audio/libmad		\
	audio/libid3tag		\
	audio/lame		\
	audio/libogg		\
	audio/libsndfile	\
	audio/libvorbis		\
	audio/opusfile		\
	audio/twolame		\
	audio/wavpack		\
	graphics/png

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--datarootdir=${LOCALBASE}      \
	--enable-largefile			\
	--enable-symlinks			\
	--without-libltdl			\
	--disable-openmp			\
	--with-distro=OpenBSD

# Sound drivers
CONFIGURE_ARGS+=		\
	--disable-ao		\
	--disable-oss		\
	--disable-alsa		\
	--disable-coreaudio	\
	--disable-pulseaudio	\
	--disable-waveaudio	\
	--disable-sunaudio	\
	--enable-sndio

# Additional file formats
CONFIGURE_ARGS+=			\
	--with-id3tag			\
	--with-lame			\
	--with-mad			\
	--without-magic			\
	--without-opencore-amrnb	\
	--without-opencore-amrwb	\
	--with-png			\
	--with-twolame			\
	--enable-formats=no		\
	--disable-amrnb			\
	--disable-amrwb			\
	--enable-flac			\
	--enable-gsm			\
	--enable-lpc10			\
	--enable-mp3			\
	--enable-oggvorbis		\
	--enable-opus			\
	--enable-sndfile		\
	--enable-wavpack		\
	--without-ladspa

CONFIGURE_ENV= \
	CPPFLAGS="-I${LOCALBASE}/include" \
	LDFLAGS="-L${LOCALBASE}/lib"

# requires: autoconf-2.69, automake-1.16, devel/libtool, textproc/groff and
# devel/autoconf-archive
dist:
	ftp -o /tmp/sox-code-${GIT_COMMIT}.zip \
		${GITWEB_URL}/s/so/sox/code.git/sox-code-${GIT_COMMIT}.zip; \
	t=`mktemp -d /tmp/sox.XXXXXXXXXX`; \
	f=$$t/sox-code-${GIT_COMMIT}/${DISTNAME}.tar.gz; \
	ac_v=2.69; \
	am_v=1.16; \
	cd $$t; \
	unzip /tmp/sox-code-${GIT_COMMIT}.zip; \
	cd sox-code-${GIT_COMMIT}; \
	echo "EXTRA_DIST += libsox.sym" >> ./src/Makefile.am; \
	sed -ie "s/${GIT_V}/${V}/g" ./configure.ac; \
	env -i AUTOCONF_VERSION=$$ac_v AUTOMAKE_VERSION=$$am_v \
		autoreconf-$$ac_v -i && \
		./configure &&  \
		${MAKE_PROGRAM} dist; \
	scp $$f train:source/; \
	cd -; rm -rf $$t; rm -f /tmp/sox-code-${GIT_COMMIT}.zip;

do-test:
	@cd ${WRKSRC}/src && ${MAKE_PROGRAM} ${MAKE_FLAGS} \
		-f ${MAKE_FILE} extras
	@cd ${WRKSRC}/src && ./tests.sh && ./testall.sh

.include <bsd.port.mk>
