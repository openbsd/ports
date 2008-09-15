# $OpenBSD: Makefile,v 1.17 2008/09/15 22:08:40 jakemsr Exp $

COMMENT=	free video editor

V=		2.4.3
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

WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xcomposite Xdamage pcre audiofile esd \
		Xrender Xv atk-1.0 c cairo expat fontconfig \
		freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gthread-2.0 m ogg pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pixman-1 png pthread stdc++ z ossaudio

MODULES=	devel/gettext

BUILD_DEPENDS=	:autoconf-${AUTOCONF_VERSION}:devel/autoconf/${AUTOCONF_VERSION} \
		:automake-${AUTOMAKE_VERSION}.*:devel/automake/${AUTOMAKE_VERSION}
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		faac.>=1::audio/faac \
		faad.>=2::audio/faad \
		mp3lame.>=1::audio/lame \
		vorbis.>=5,vorbisenc.>=2::audio/libvorbis \
		xml2.>=9::textproc/libxml \
		xvidcore.>=4::multimedia/xvidcore \
		x264::multimedia/x264 \
		artsc.>=1::x11/kde/arts3

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
		AUTOCONF_VERSION=${AUTOCONF_VERSION} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		${MAKE_PROGRAM} -f Makefile.dist

.include <bsd.port.mk>
