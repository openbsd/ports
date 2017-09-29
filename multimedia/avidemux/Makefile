# $OpenBSD: Makefile,v 1.55 2017/09/29 16:48:50 jca Exp $

# XXX base clang says: i386/fft_sse.c:172:43: error: unknown token in expression
COMPILER=	base-gcc

COMMENT=	free video editor

V=		2.4.4
DISTNAME=	avidemux_${V}
PKGNAME=	avidemux-${V}

REVISION=	19

CATEGORIES=	multimedia

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=avidemux/}

HOMEPAGE=	http://fixounet.free.fr/avidemux/

# GPLv2
PERMIT_PACKAGE_CDROM=	yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xv atk-1.0 c cairo
WANTLIB += expat fontconfig freetype gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 m ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs sndio
WANTLIB += ${COMPILER_LIBCXX} xcb xcb-render xcb-shm z gdk_pixbuf-2.0 gdk-x11-2.0
WANTLIB += gtk-x11-2.0 faad mp3lame vorbis vorbisenc xml2 xvidcore
WANTLIB += ffi harfbuzz graphite2 lzma

MODULES=	devel/gettext

RUN_DEPENDS =	devel/desktop-file-utils
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS=	x11/gtk+2 \
		audio/faad>=2.7 \
		audio/lame \
		audio/libvorbis \
		textproc/libxml \
		multimedia/xvidcore \
		multimedia/x264

USE_GMAKE=	Yes

AUTOCONF_VERSION=2.60
AUTOMAKE_VERSION=1.9

.if ${MACHINE_ARCH} == "i386"
MD_CFLAGS =	-fno-pie
MD_LDFLAGS =	-nopie
.elif ${MACHINE_ARCH} == "arm"
# binutils-2.17 can't handle -falign-loops=16 on arm; 0 == default
MD_CFLAGS =	-falign-loops=0
.endif

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CFLAGS="${MD_CFLAGS} ${CFLAGS}" \
		CXXFLAGS="${MD_CFLAGS} ${CXXFLAGS}" \
		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="${MD_LDFLAGS} -L${LOCALBASE}/lib -logg -lm -lz"
CONFIGURE_ARGS+=--enable-xv \
		--with-x \
		--with-freetype2 \
		--with-lame \
		--with-fontconfig \
		--with-faad2 \
		--without-libsdl \
		--without-oss \
		--without-esd \
		--without-arts \
		--without-faac \
		--without-libdca \
		--without-newfaad \
		--without-aften \
		--without-qt-dir \
		--without-qt-includes \
		--without-gpt \
		--disable-ssse3 \
		--disable-altivec

post-patch:
	@cd ${WRKSRC} && env \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		${MAKE_PROGRAM} -f Makefile.dist

pre-build:
	@cp ${FILESDIR}/ADM_devicesndio.{cpp,h} ${WRKSRC}/avidemux/ADM_audiodevice/

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/avidemux2.desktop \
		${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/avidemux_icon.png \
		${PREFIX}/share/pixmaps/avidemux.png

.include <bsd.port.mk>
