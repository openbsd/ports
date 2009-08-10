# $OpenBSD: Makefile,v 1.21 2009/08/10 06:33:02 kili Exp $

COMMENT=	free video editor

V=		2.4.4
DISTNAME=	avidemux_${V}
PKGNAME=	avidemux-${V}p0

CATEGORIES=	multimedia

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=avidemux/}

HOMEPAGE=	http://fixounet.free.fr/avidemux/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xv atk-1.0 audiofile c cairo
WANTLIB += expat fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 m ogg ossaudio pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs sndio stdc++
WANTLIB += xcb z

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
		x264::multimedia/x264 \
		artsc.>=1::x11/kde/arts3 \
		esd::audio/esound

USE_X11=	Yes
USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

AUTOCONF_VERSION=2.59
AUTOMAKE_VERSION=1.8

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include \
		-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib -logg -lm -lz"
# XXX TODO:	remove arts, esd, oss
#		add sndio
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--enable-xv \
		--with-x \
		--with-freetype2 \
		--with-lame \
		--with-fontconfig \
		--with-oss \
		--with-faac \
		--with-faad2 \
		--with-esd \
		--with-arts \
		--without-libdca \
		--without-libsdl \
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

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/avidemux2.desktop \
		${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/avidemux_icon.png \
		${PREFIX}/share/pixmaps/avidemux.png

.include <bsd.port.mk>
