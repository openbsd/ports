# $OpenBSD: Makefile,v 1.22 2016/01/12 09:09:57 czarkoff Exp $

# archs with atomic ops
ONLY_FOR_ARCHS =	alpha amd64 i386 mips64 mips64el powerpc sparc64

COMMENT =		movie player based on MPlayer/mplayer2

GH_ACCOUNT=		mpv-player
GH_PROJECT=		mpv
GH_TAGNAME=		v0.14.0

CATEGORIES =		multimedia x11

HOMEPAGE =		http://mpv.io/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	patents
PERMIT_PACKAGE_FTP =	Yes

WANTLIB += EGL GL SDL2 X11 Xext Xinerama Xrandr Xss Xv ass avcodec
WANTLIB += avdevice avfilter avformat avutil bluray c cdio cdio_cdda
WANTLIB += cdio_paranoia dvdnav dvdread jpeg lcms2 m pthread smbclient
WANTLIB += sndio swresample swscale v4l2 z ${MODLUA_WANTLIB}

MODULES =		converters/libiconv \
			lang/lua \
			lang/python

BUILD_DEPENDS =		audio/ladspa \
			graphics/libmng \
			textproc/py-docutils

LIB_DEPENDS =		audio/libcdio \
			devel/libdvdread \
			devel/sdl2 \
			graphics/ffmpeg>=20151112 \
			graphics/jpeg \
			graphics/lcms2 \
			multimedia/libass \
			multimedia/libbluray>=0.8.0 \
			multimedia/libdvdnav \
			multimedia/libv4l \
			net/samba

# zsh.pl needs to find the binary that was just built
PORTPATH =		\
	${WRKDIR}/bin:${WRKBUILD}:/usr/bin:/bin:/usr/sbin:/sbin:${DEPBASE}/bin:${LOCALBASE}/bin:${X11BASE}/bin

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

CFLAGS +=		-I. -I.. -I${LOCALBASE}/include

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	TOOLS/old-configure
CONFIGURE_ARGS +=	--confdir=${SYSCONFDIR}/mpv \
			--mandir=${LOCALBASE}/man \
			--extra-ldflags="`pkg-config --libs sdl2`" \
			--extra-cflags="`pkg-config --cflags sdl2`" \
			--enable-sdl2 \
			--disable-alsa \
			--disable-caca \
			--disable-enca \
			--disable-jack \
			--disable-libarchive \
			--disable-libguess \
			--disable-ossaudio \
			--disable-optimization \
			--disable-openal \
			--disable-pulse \
			--disable-rsound \
			--disable-uchardet
CONFIGURE_ENV +=	TMPDIR=${WRKBUILD}

USE_GMAKE =		Yes
MAKE_FLAGS =		V=1
FAKE_FLAGS =		CONFDIR=${DESTDIR}${PREFIX}/share/examples/mpv

USE_GROFF =		Yes
NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mpv
	${INSTALL_DATA} ${WRKDIST}/etc/*.conf \
	                ${WRKDIST}/TOOLS/mpv_identify.sh \
	                ${WRKDIST}/TOOLS/umpv \
	                	${PREFIX}/share/examples/mpv

.include <bsd.port.mk>
