# $OpenBSD: Makefile,v 1.5 2006/10/29 23:30:50 espie Exp $

COMMENT=		"multimedia decoding library"

V=			1.1.2
DISTNAME=		xine-lib-${V}
PKGNAME=		${DISTNAME}p0
EXTRACT_SUFX=		.tar.bz2
CATEGORIES=		multimedia
SHARED_LIBS=		xine	14.1

HOMEPAGE=		http://xinehq.de/

MAINTAINER=		Jacob Meuser <jakemsr@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xine/}

WANTLIB=		ICE SM X11 Xext Xinerama Xv freetype \
			jpeg lcms m usbhid z

.if ${MACHINE_ARCH} == "i386"
PKG_ARGS+=		-Di386=1
.else
PKG_ARGS+=		-Di386=0
.endif

MODULES=		gettext
BUILD_DEPENDS=		::devel/pkgconfig
LIB_DEPENDS=		FLAC.>=5::audio/flac \
			SDL.>=3::devel/sdl \
			a52::audio/liba52 \
			avcodec.>=7,postproc.>=7,avutil.>=1::graphics/ffmpeg \
			dvdnav.>=5::multimedia/libdvdnav \
			mad.>=2::audio/libmad \
			mng.>=3::graphics/libmng \
			ogg.>=5::audio/libogg \
                        vorbis.>=4::audio/libvorbis \
			speex.>=3::audio/speex \
			theora.>=1::multimedia/libtheora

SHARED_ONLY=		Yes
USE_X11=		Yes
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
LIBTOOL_FLAGS+=		--tag=disable-static

SUBST_VARS+=		V

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-optimizations \
			--disable-mlib \
			--disable-opengl \
			--disable-fb \
			--disable-vidix \
			--disable-aalib \
			--disable-caca \
			--disable-polypaudio \
			--disable-oss \
			--disable-alsa \
			--disable-arts \
			--disable-esd \
			--disable-gnome \
			--disable-imagemagick \
			--disable-samba \
			--disable-vcd \
			--enable-shared-xv \
			--disable-static-xv \
			--disable-gnomevfs \
			--disable-gdkpixbuf \
			--with-external-ffmpeg=${LOCALBASE} \
			--with-external-dvdnav \
			--with-external-a52dec \
			--with-external-libmad \
			--with-internal-vcdlibs

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			FFMPEG_CPPFLAGS="-I${LOCALBASE}/include/ffmpeg -I${LOCALBASE}/include/postproc" \
			FFMPEG_LIBS="-lavcodec -lavutil -lpostproc -lm -lz -pthread" \
			FFMPEG_POSTPROC_LIBS="-lpostproc"

post-patch:
.if ${MACHINE_ARCH} == "i386"
	cp ${FILESDIR}/i386_set_ldt.c ${WRKSRC}/src/libw32dll/wine/
.endif

.include <bsd.port.mk>
