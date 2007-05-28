# $OpenBSD: Makefile,v 1.5 2007/05/28 18:24:49 steven Exp $

SHARED_ONLY=	Yes

COMMENT-main=	"input and output plugins for audacious"
COMMENT-arts=	"arts helper and plugin for audacious"

V=		1.3.4
DISTNAME=	audacious-plugins-$V
PKGNAME-main=	${DISTNAME}p0
PKGNAME-arts=	audacious-arts-$V
CATEGORIES=	audio multimedia

HOMEPAGE=	http://audacious-media-player.org/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://static.audacious-media-player.org/release/
EXTRACT_SUFX=	.tgz

MULTI_PACKAGES=	-main

PSEUDO_FLAVORS=	no_arts
FLAVOR?=

.if ${FLAVOR:Mno_arts}
CONFIGURE_ARGS+=--disable-arts
.else
MULTI_PACKAGES+=-arts
.endif

USE_X11=	Yes
NO_REGRESS=	Yes

WANTLIB=	X11 Xau Xdmcp Xrender Xcursor Xext Xfixes Xi Xinerama Xrandr \
		m z expat fontconfig freetype iconv intl \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 atk-1.0 cairo \
		glib-2.0 gthread-2.0 gmodule-2.0 gobject-2.0 \
		gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0 glitz png

WANTLIB-main=	${WANTLIB} Xcomposite crypto ssl ossaudio stdc++ ogg usbhid xml2
WANTLIB-arts=	${WANTLIB} Xext c pthread

BUILD_DEPENDS=	${RUN_DEPENDS-main}

RUN_DEPENDS-main=	:audacious->=1.2:audio/audacious
RUN_DEPENDS-arts=	::audio/audacious-plugins,-main

LIB_DEPENDS-main=	tag.>=6:taglib->=1.4:audio/taglib \
			faad,mp4ff::audio/faad \
			audiofile::devel/libaudiofile \
			curl.>=5::net/curl \
			SDL.>=6::devel/sdl \
			vorbis.>=5,vorbisfile.>=4::audio/libvorbis \
			mpcdec.>=2::audio/libmpcdec \
			mad::audio/libmad \
			mp3lame::audio/lame \
			esd.>=2::audio/esound \
			sndfile.>=1::audio/libsndfile
LIB_DEPENDS-arts=	artsc.>=1::x11/kde/arts3

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-ipv6 \
			--with-dev-dsp=/dev/audio \
			--disable-flac
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_header_altivec_h=no

pre-configure:
	perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},' \
		${WRKSRC}/src/aac/src/Makefile

.include <bsd.port.mk>
