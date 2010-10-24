# $OpenBSD: Makefile,v 1.29 2010/10/24 21:40:38 sthen Exp $

COMMENT=	free video editor

V=		2.4.4
DISTNAME=	avidemux_${V}
PKGNAME=	avidemux-${V}

REVISION=	6

CATEGORIES=	multimedia

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=avidemux/}

HOMEPAGE=	http://fixounet.free.fr/avidemux/

# GPLv2
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xv atk-1.0 c cairo
WANTLIB += expat fontconfig freetype gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 m ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs sndio
WANTLIB += stdc++ xcb xcb-render xcb-render-util z gdk_pixbuf-2.0
WANTLIB += gdk-x11-2.0 gtk-x11-2.0 faac faad mp3lame vorbis vorbisenc
WANTLIB += xml2 xvidcore x264

MODULES=	devel/gettext

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS=	::x11/gtk+2 \
		::audio/faac \
		::audio/faad \
		::audio/lame \
		::audio/libvorbis \
		::textproc/libxml \
		::multimedia/xvidcore \
		::multimedia/x264

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

AUTOCONF_VERSION=2.59
AUTOMAKE_VERSION=1.8

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include \
		-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib -logg -lm -lz"
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--enable-xv \
		--with-x \
		--with-freetype2 \
		--with-lame \
		--with-fontconfig \
		--with-faac \
		--with-faad2 \
		--without-libsdl \
		--without-oss \
		--without-esd \
		--without-arts \
		--without-libdca \
		--without-newfaad \
		--without-aften \
		--without-qt-dir \
		--without-qt-includes \
		--without-gpt \
		--disable-ssse3 \
		--disable-altivec

pre-configure:
	@cd ${WRKSRC} && \
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
