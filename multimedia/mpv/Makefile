# $OpenBSD: Makefile,v 1.14 2015/08/25 11:04:38 jca Exp $

ONLY_FOR_ARCHS =	alpha amd64 i386 powerpc sparc64

COMMENT =		movie player based on MPlayer/mplayer2
V =			0.9.2
DISTNAME =		mpv-${V}

GH_ACCOUNT=		mpv-player
GH_PROJECT=		mpv
GH_TAGNAME=		v${V}

CATEGORIES =		multimedia x11

HOMEPAGE =		http://mpv.io/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM =	patents
PERMIT_PACKAGE_FTP =	Yes

WANTLIB += EGL GL X11 Xext Xinerama Xrandr Xss Xv ass avcodec
WANTLIB += avdevice avfilter avformat avutil bluray c cdio cdio_cdda
WANTLIB += cdio_paranoia dvdnav dvdread jpeg lcms2 m pthread
WANTLIB += smbclient sndio swresample swscale z ${MODLUA_WANTLIB}

MODULES =		converters/libiconv \
			lang/lua \
			lang/python

BUILD_DEPENDS =		audio/ladspa \
			graphics/libmng \
			textproc/py-docutils

LIB_DEPENDS =		audio/libcdio \
			devel/libdvdread \
			graphics/ffmpeg \
			graphics/jpeg \
			graphics/lcms2 \
			multimedia/libass \
			multimedia/libbluray>=0.8.0 \
			multimedia/libdvdnav \
			net/samba

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

CFLAGS +=		-I. -I.. -I${LOCALBASE}/include `pkg-config --cflags smbclient`

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	old-configure
CONFIGURE_ARGS +=	--confdir=${SYSCONFDIR}/mpv \
			--mandir=${LOCALBASE}/man \
			--extra-ldflags="-L${LOCALBASE}/lib" \
			--disable-alsa \
			--disable-caca \
			--disable-enca \
			--disable-jack \
			--disable-libguess \
			--disable-ossaudio \
			--disable-optimization \
			--disable-openal \
			--disable-pulse \
			--disable-rsound
CONFIGURE_ENV +=	TMPDIR=${WRKBUILD}

# pkg-config says smbclient's version is 0
CONFIGURE_ARGS +=	--enable-smb \
			--extra-libs="-lsmbclient"

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
