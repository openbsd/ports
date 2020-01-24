# $OpenBSD: Makefile,v 1.75 2020/01/24 05:20:37 bket Exp $

COMMENT=	free audio editor

# fosshub has proper tarballs, but they are on time-expired URLs
# so can't be fetched automatically
GH_ACCOUNT=	audacity
GH_PROJECT=	audacity
GH_TAGNAME=	Audacity-2.3.3
DISTNAME=	${GH_TAGNAME:L}
CATEGORIES=	audio

HOMEPAGE=	https://www.audacityteam.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += FLAC FLAC++ ICE SDL2 SM SoundTouch X11 Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender Xss
WANTLIB += Xxf86vm aom atk-1.0 atk-bridge-2.0 avcodec avformat
WANTLIB += avutil bz2 c cairo cairo-gobject crypto dav1d epoxy
WANTLIB += expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gsm gthread-2.0 gtk-3 harfbuzz iconv id3tag intl jpeg
WANTLIB += lzma m mad mspack notify ogg opus pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png portaudio portmidi samplerate
WANTLIB += sndfile sndio soxr speex ssl swresample theoradec theoraenc
WANTLIB += tiff usbhid vamp-hostsdk vorbis vorbisenc vorbisfile
WANTLIB += vpx wx_baseu-3.0 wx_baseu_net-3.0 wx_baseu_xml-3.0
WANTLIB += wx_gtk3u_adv-3.0 wx_gtk3u_core-3.0 wx_gtk3u_html-3.0
WANTLIB += wx_gtk3u_qa-3.0 wx_gtk3u_xrc-3.0 x264 x265 xcb xcb-render
WANTLIB += xcb-shm xml2 xvidcore z zstd
# dlopened
WANTLIB += mp3lame

COMPILER =		base-clang ports-gcc base-gcc

MODULES=	lang/python
MODPY_RUNDEP=	No

BUILD_DEPENDS=	devel/gettext,-tools \
		shells/bash
# Used to build suild, not installed by default
# See ${WRKSRC}/lib-src/lv2/suil and https://drobilla.net/software/suil
BUILD_DEPENDS+=	x11/gtk+2
LIB_DEPENDS=	x11/wxWidgets>=3.0.4 \
		audio/libsoxr \
		audio/flac \
		audio/lame \
		audio/libvorbis \
		audio/libid3tag \
		audio/libmad \
		audio/portaudio-svn>=1406p1 \
		audio/portmidi \
		audio/soundtouch \
		audio/vamp-plugin-sdk \
		graphics/ffmpeg
RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

SEPARATE_BUILD= No

USE_GMAKE=		Yes
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
CONFIGURE_STYLE=	autoreconf
CONFIGURE_ENV=		CC="${CC}" CXX="${CXX}" OBJCXX="${CXX}" \
			CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			CFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include ${CFLAGS}" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib ${LDFLAGS}"

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} \
			${WRKSRC}/lib-src/lib-widget-extra \
			${WRKSRC}/lib-src/portsmf \
			${WRKSRC}/lib-src/FileDialog \
			${WRKSRC}/lib-src/sbsms \
			${WRKSRC}/lib-src/libnyquist

CONFIGURE_ARGS=		--disable-dynamic-loading \
			--enable-ladspa \
			--enable-nyquist \
			--enable-unicode \
			--with-expat=system \
			--with-ffmpeg=system \
			--with-lame=system \
			--with-lib-preferences=system \
			--with-libflac=system \
			--with-libid3tag=system \
			--with-libmad=system \
			--with-libsndfile=system \
			--with-libsoxr=system \
			--with-libvamp=system \
			--with-libvorbis=system \
			--with-lv2=local \
			--with-midi=yes \
			--with-portaudio=system \
			--with-portmidi=system \
			--with-sbsms=local \
			--with-soundtouch=system \
			--with-widgetextra=local \
			--without-liblrdf \
			--without-libtwolame \
			--without-portmixer \
			--without-redland

.if ${MACHINE_ARCH} != "amd64"
CONFIGURE_ARGS+=	--disable-sse
.endif

NO_TEST=	Yes

# dummy Makefile to disable portmixer
post-extract:
	printf 'all:\ninstall:\n' > ${WRKSRC}/lib-src/portmixer/Makefile

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/images/AudacityLogo.xpm \
		${PREFIX}/share/pixmaps/audacity.xpm
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/src/audacity.desktop \
		${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/mime/packages
	${INSTALL_DATA} ${WRKSRC}/src/audacity.xml \
		${PREFIX}/share/mime/packages/

.include <bsd.port.mk>
