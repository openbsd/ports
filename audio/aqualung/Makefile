# $OpenBSD: Makefile,v 1.32 2012/07/10 15:22:44 jasper Exp $

COMMENT=	advanced music player

DISTNAME=	aqualung-0.9beta11
REVISION=	10
EPOCH=		0
CATEGORIES=	audio

HOMEPAGE=	http://aqualung.factorial.hu/

MAINTAINER=	Jeremy Evans <jeremy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 bz2 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gthread-2.0 m mp3lame ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread samplerate sndfile sndio stdc++
WANTLIB += vorbis vorbisenc vorbisfile z gtk-x11-2.0 gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 xml2 mac mad mpcdec FLAC avcodec
WANTLIB += avformat avutil jack wavpack lrdf oggz speex cddb cdio
WANTLIB += cdio_cdda cdio_paranoia modplug ${MODLUA_WANTLIB}
WANTLIB += GL pixman-1 png pthread-stubs xcb xcb-render xcb-shm

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=aqualung/}

MODULES=	devel/gettext \
		lang/lua

MODLUA_SA=	Yes

LIB_DEPENDS=	audio/flac \
		audio/jack \
		audio/libcdio \
		audio/libcddb \
		audio/libmad \
		audio/libmodplug \
		audio/mac \
		audio/musepack \
		audio/speex \
		audio/wavpack \
		graphics/ffmpeg \
		multimedia/oggz \
		textproc/liblrdf \
		textproc/libxml \
		x11/gtk+2 \
		${MODLUA_LIB_DEPENDS}

RUN_DEPENDS=	devel/desktop-file-utils

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-pthread -L${LOCALBASE}/lib -L${X11BASE}/lib " \
		CFLAGS="${CFLAGS} -DOSS_DEVICE='\"/dev/audio\"'  \
		-DPTHREAD_MIN_PRIORITY=0 -DPTHREAD_MAX_PRIORITY=31  \
		-I${LOCALBASE}/include -I${MODLUA_INCL_DIR}"

# ifp (requires libifp) - no package
CONFIGURE_ARGS=	--with-cdda \
		--with-cddb \
		--with-flac \
		--with-jack \
		--with-ladspa \
		--with-lame \
		--with-lavc \
		--with-loop \
		--with-lua \
		--with-mac \
		--with-mod \
		--with-mpc \
		--with-mpeg \
		--with-ogg \
		--with-podcast \
		--with-sndfile \
		--with-sndio \
		--with-speex \
		--with-src \
		--with-systray \
		--with-vorbisenc \
		--with-wavpack \
		--without-alsa \
		--without-ifp \
		--without-oss \
		--without-pulse

post-install:
	mv ${PREFIX}/share/aqualung/doc ${PREFIX}/share/doc/aqualung
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	@${SUBST_CMD} -c ${FILESDIR}/aqualung.desktop \
		${PREFIX}/share/applications/aqualung.desktop
	@chown ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/applications/aqualung.desktop

.include <bsd.port.mk>
