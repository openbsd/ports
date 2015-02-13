# $OpenBSD: Makefile,v 1.5 2015/02/13 13:49:45 sthen Exp $

# requires 64-bit atomic ops.
# some other arch could probably be added..certainly fails on i386
ONLY_FOR_ARCHS =	amd64

COMMENT =		movie player based on MPlayer/mplayer2
V =			0.7.3
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
WANTLIB += avdevice avfilter avformat avresample avutil c cdio
WANTLIB += cdio_cdda cdio_paranoia dvdnav dvdread jpeg lcms2
WANTLIB += m postproc pthread smbclient sndio swscale z ${MODLUA_WANTLIB}

MODULES =		converters/libiconv \
			lang/lua \
			lang/python

BUILD_DEPENDS =		audio/ladspa \
			graphics/libmng \
			textproc/py-docutils

LIB_DEPENDS =		audio/libcdio \
			devel/libdvdread>=4.1.0 \
			graphics/ffmpeg \
			graphics/jpeg \
			graphics/lcms2 \
			multimedia/libass \
			multimedia/libdvdnav>=4.2.0 \
			net/samba

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic

CFLAGS +=		-I. -I.. -I${LOCALBASE}/include

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	old-configure
CONFIGURE_ARGS +=	--confdir=${SYSCONFDIR}/mpv \
			--mandir=${LOCALBASE}/man \
			--extra-ldflags="-L${LOCALBASE}/lib" \
			--disable-alsa \
			--disable-bluray \
			--disable-caca \
			--disable-enca \
			--disable-jack \
			--disable-libguess \
			--disable-mpg123 \
			--disable-ossaudio \
			--disable-optimization \
			--disable-openal \
			--disable-pulse \
			--disable-portaudio \
			--disable-rsound

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
