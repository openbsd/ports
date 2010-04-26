# $OpenBSD: Makefile,v 1.24 2010/04/26 02:09:03 jakemsr Exp $

COMMENT=	free video editor

V=		2.4.4
DISTNAME=	avidemux_${V}
PKGNAME=	avidemux-${V}p3

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
WANTLIB += expat fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 m ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs sndio
WANTLIB += stdc++ xcb xcb-render xcb-render-util z

MODULES=	devel/gettext

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		faac.>=1::audio/faac \
		faad.>=2::audio/faad \
		mp3lame.>=1::audio/lame \
		vorbis.>=5,vorbisenc.>=2::audio/libvorbis \
		xml2.>=9::textproc/libxml \
		xvidcore.>=4::multimedia/xvidcore \
		x264::multimedia/x264

USE_X11=	Yes
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
